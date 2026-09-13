"""Deterministic translator: LRML bracket IR -> waist fragment concrete syntax.

Implements translation-policy.md v1 (T-rules, N-rules) exactly; schema-blind
(policy P2) and total over the lrml-target.md grammar (policy P3). Emitted
programs parse under harness/waist_eval.py and carry an audit header (policy
§5). Stdlib only.

Usage:  python3 bracket2waist.py "<ir string>"     # print translated program
"""
import hashlib
import os
import re
import sys

from lrml_ir import IRError, norm_name, validate_ir

POLICY_VERSION = 'translation-policy.md v1'

# Post-hoc ablation flag (review M3): when set, unary sort atoms in obligation
# consequents are dropped wherever their variable is bound by another literal
# of the same branch — 'exist-transparent consequents'. Default off; the
# frozen v1 behavior is unchanged unless B2W_EXIST_TRANSPARENT is set.
ABLATE_EXIST = bool(os.environ.get('B2W_EXIST_TRANSPARENT'))


def _drop_redundant_sorts(branches, tr):
    """Ablation (review M3): drop entity-sort atoms wherever their variable
    is bound by another positive literal of the same branch — the sort
    requirement becomes transparent instead of a naming obligation."""
    if not ABLATE_EXIST:
        return branches
    out = []
    for b in branches:
        keep = []
        for lit in b['lits']:
            m = re.match(r'^([a-z][a-z0-9_]*)\((\w+)\)$', lit)
            if m and lit in tr.sortish:
                var = m.group(2)
                # token-boundary match (review 2, D6): `var in l` was a
                # substring test that false-matched inside longer tokens,
                # dropping load-bearing sort atoms and crashing the evaluator
                if any(re.search(rf'\b{var}\b', l)
                       for l in b['lits'] if l != lit):
                    continue
            keep.append(lit)
        out.append(br(keep, b['evars']))
    return out

CMP_MAP = {
    'greater_than_equal': '>=', 'at_least': '>=', 'min': '>=',
    'less_than_equal': '<=', 'at_most': '<=', 'max': '<=', 'not_exceed': '<=',
    'greater_than': '>', 'exceed': '>', 'more_than': '>',
    'less_than': '<', 'equal': '=', 'equals': '=', 'not_equal': '!=',
}
COMPLEMENT = {'>=': '<', '<=': '>', '>': '<=', '<': '>=', '=': '!=', '!=': '='}
BINARY_CORE = ('has', 'within', 'include', 'part_of', 'as_per', 'comply_with')
TRANSPARENT = ('loop', 'for_each', 'if', 'then', 'and')

# Policy N2 — normalized-unit -> multiplier into the §3 canonical unit.
# None = attested spelling whose value passes through unscaled (already
# canonical); absence from the table = unverified (flagged, not dropped).
UNIT_TABLE = {
    'mm': 1, 'millimetre': 1, 'millimetres': 1, 'millimeter': 1,
    'millimeters': 1,
    'cm': 10, 'centimetre': 10, 'centimetres': 10, 'centimeter': 10,
    'centimeters': 10,
    'm': 1000, 'metre': 1000, 'metres': 1000, 'meter': 1000, 'meters': 1000,
    'm2': None, 'sqm': None, 'square_metres': None, 'square_meters': None,
    'percent': 0.01,
    'deg': None, 'degree': None, 'degrees': None, 'c': None,
    'l_s': None, 'w_m2': None, 'kn_m2': None, 'kwh_m2yr': None,
    'kg_m2': None, 'kg': None, 'lux': None, 'pa': None, 'db': None,
    'kw': None, 'w': None, 'watts_per_room': None, 'mg_m3': None,
    'dm3_s_per_m2': None, 'litres_per_second_per_machine': None,
    'years': None, 'year': None,
}

NUM_RE = re.compile(r'^(-?\d+(?:[.,]\d+)?)\s*(.*)$')
RATIO_RE = re.compile(r'^(\d+)\s*:\s*(\d+)$')
# attr separator: a '.' flanked by letters ("floor waste. diameter"), never a
# decimal point ("6.8") or a dotted reference ("t2.1")
ATTR_RE = re.compile(r'^(.*?[A-Za-z])\s*\.\s*([A-Za-z].*)$')


def split_attr(raw):
    m = ATTR_RE.match(raw.strip())
    return (m.group(1), m.group(2)) if m else None


class Translator:

    def __init__(self):
        self.evars = {}          # entity phrase (normalized) -> var name
        self.sorted_ents = set() # entities independently asserted (get a
                                 # sort atom; attr-only bases do not — T2)
        self.attr_vars = {}      # (entity, attr) -> var name
        self.helpers = []        # strict helper rule strings
        self.notes = []          # audit comments (% unit-unverified etc.)
        self.helper_seq = 0
        self.sortish = set()     # lits emitted as entity-sort atoms (ablation)

    # -- naming -------------------------------------------------------------
    def var_for(self, ent):
        if ent not in self.evars:
            v = ''.join(w.capitalize() for w in ent.split('_')) or 'X'
            taken = set(self.evars.values())
            base, k = v, 2
            while v in taken:
                v = f'{base}{k}'
                k += 1
            self.evars[ent] = v
        return self.evars[ent]

    def sort_lits(self, ent):
        lits = ([f'{ent}({self.var_for(ent)})']
                if ent in self.sorted_ents else [])
        self.sortish.update(lits)
        return lits

    def var_for_attr(self, ent, attr):
        key = (ent, attr)
        if key not in self.attr_vars:
            self.attr_vars[key] = (self.var_for(ent)
                                   + ''.join(w.capitalize()
                                             for w in attr.split('_')))
        return self.attr_vars[key]

    # -- entity pre-pass (policy §3 preamble: charitable co-reference) ------
    def collect_entities(self, node):
        if node[0] == 'operand':
            sp = split_attr(node[1])
            if sp:
                self.var_for(norm_name(sp[0]))
            return
        fname, args = node[1], node[2]
        plain = [a for a in args if a[0] == 'operand'
                 and not split_attr(a[1])
                 and not NUM_RE.match(a[1].strip())]
        if fname in ('exist', 'has', 'within', 'include', 'part_of',
                     'loop', 'for_each'):
            for a in plain:
                self.var_for(norm_name(a[1]))
                self.sorted_ents.add(norm_name(a[1]))
        if fname == 'is' and args and args[0][0] == 'operand' \
                and not split_attr(args[0][1]):
            self.var_for(norm_name(args[0][1]))
            self.sorted_ents.add(norm_name(args[0][1]))
        for a in args:
            self.collect_entities(a)

    # -- operands -----------------------------------------------------------
    def parse_value(self, raw):
        """-> ('num', canonical_string) | ('const', name). Applies N2."""
        raw = raw.strip()
        m = RATIO_RE.match(raw)
        if m:
            return ('num', fmt(float(m.group(1)) / float(m.group(2))))
        m = NUM_RE.match(raw)
        if m and m.group(1):
            val = float(m.group(1).replace(',', '.'))
            unit = norm_name(m.group(2)) if m.group(2).strip() else ''
            if m.group(2).strip() in ('%', 'percent') or unit == 'percent':
                return ('num', fmt(val * 0.01))
            if not unit or set(m.group(2).strip()) <= {'°'}:
                return ('num', fmt(val))
            if unit in UNIT_TABLE:
                mult = UNIT_TABLE[unit]
                return ('num', fmt(val * mult) if mult else fmt(val))
            self.notes.append(f'% unit-unverified: {raw!r} passed through '
                              f'as {fmt(val)}')
            return ('num', fmt(val))
        return ('const', norm_name(raw))

    def term(self, node):
        """Translate a node in argument position -> (term_string, lits)."""
        if node[0] == 'operand':
            raw = node[1]
            sp = split_attr(raw)
            if sp:
                ent, attr = norm_name(sp[0]), norm_name(sp[1])
                v = self.var_for_attr(ent, attr)
                return v, self.sort_lits(ent) + [
                    f'{attr}({self.var_for(ent)}, {v})']
            kind, val = self.parse_value(raw)
            if kind == 'num':
                return val, []
            if val in self.evars:
                return self.evars[val], self.sort_lits(val)
            return val, []
        # nested call in a term slot: flattened to a constant (rare; logged)
        flat = norm_name(node[1] + '_' + '_'.join(
            a[1] if a[0] == 'operand' else a[1] for a in node[2]))[:40]
        self.notes.append(f'% term-flattened: nested call -> constant {flat}')
        return flat, []

    # -- boolean translation -> DNF ----------------------------------------
    # branch = {'lits': [...], 'evars': set()}
    def bool_dnf(self, node):
        if node[0] == 'operand':
            raw = node[1]
            sp = split_attr(raw)
            if sp:
                ent, attr = norm_name(sp[0]), norm_name(sp[1])
                v = self.var_for_attr(ent, attr)
                return [br(self.sort_lits(ent) + [
                    f'{attr}({self.var_for(ent)}, {v})'], {ent})]
            name = norm_name(raw)
            self.sorted_ents.add(name)      # bare boolean use asserts it
            lit = f'{name}({self.var_for(name)})'
            self.sortish.add(lit)
            return [br([lit], {name})]
        fname, args = node[1], node[2]
        if fname in TRANSPARENT:
            out = [br([], set())]
            for a in args:
                out = [merge(x, y) for x in out for y in self.bool_dnf(a)]
            return out
        if fname == 'or':
            out = []
            for a in args:
                out += self.bool_dnf(a)
            return out
        if fname == 'not':
            return self.negate(args[0])
        if fname in CMP_MAP:
            return [self.cmp_branch(CMP_MAP[fname], args)]
        if fname == 'exist':
            out = [br([], set())]
            for a in args:
                for b2 in self.bool_dnf(a):
                    # unary atoms produced under exist() are sort assertions
                    for lit in b2['lits']:
                        if re.match(r'^[a-z][a-z0-9_]*\(\w+\)$', lit):
                            self.sortish.add(lit)
                out = [merge(x, y) for x in out for y in self.bool_dnf(a)]
            return out
        if fname == 'is':
            return self.is_dnf(args)
        # any remaining fname — core binary or domain predicate: atom (T6)
        terms, lits, ents = [], [], set()
        for a in args:
            t, sup = self.term(a)
            terms.append(t)
            lits += sup
            ents |= {e for e in self.evars if self.evars[e] == t}
        lits.append(f'{fname}({", ".join(terms)})' if terms else fname)
        return [br(lits, ents)]

    def is_dnf(self, args):
        if len(args) != 2:
            return self.bool_dnf(('call', 'and', args))   # charitable
        x, v = args
        if v[0] == 'call' and v[1] == 'or':
            out = []
            for opt in v[2]:
                out += self.is_dnf([x, opt])
            return out
        if x[0] == 'operand' and split_attr(x[1]):
            ent, attr = (norm_name(p) for p in split_attr(x[1]))
            tv, sup = (self.term(v) if v[0] == 'call'
                       else (self.parse_value(v[1])[1], []))
            return [br(self.sort_lits(ent) + [
                f'{attr}({self.var_for(ent)}, {tv})'] + sup, {ent})]
        if x[0] == 'operand' and v[0] == 'operand':
            ent = norm_name(x[1])
            kind, val = self.parse_value(v[1])
            if kind == 'const':
                return [br([f'{ent}({self.var_for(ent)})',
                            f'{val}({self.var_for(ent)})'], {ent})]
        tx, sx = self.term(x)
        tv, sv = self.term(v)
        return [br(sx + sv + [f'is({tx}, {tv})'], set())]

    def cmp_branch(self, op, args):
        if len(args) != 2:
            args = (args + [('operand', '0')])[:2]
        tx, sx = self.term(args[0])
        tv, sv = self.term(args[1])
        # charitable orientation: numeric literal goes on the right
        if re.match(r'^-?\d', tx) and not re.match(r'^-?\d', tv):
            tx, tv = tv, tx
            op = {'>': '<', '<': '>', '>=': '<=', '<=': '>='}.get(op, op)
        ents = {e for e, v_ in self.evars.items() if v_ in (tx, tv)} | \
               {e for (e, _a) in self.attr_vars
                if self.attr_vars[(e, _a)] in (tx, tv)}
        return br(sx + sv + [f'{tx} {op} {tv}'], ents)

    def negate(self, node):
        if node[0] == 'call' and node[1] in CMP_MAP:
            return [self.cmp_branch(COMPLEMENT[CMP_MAP[node[1]]], node[2])]
        if node[0] == 'call' and node[1] == 'not':
            return self.bool_dnf(node[2][0])
        inner = self.bool_dnf(node)
        self.helper_seq += 1
        h = f'neg_scope_{self.helper_seq}'
        for b in inner:
            self.helpers.append(f'{h} :- {", ".join(b["lits"])}.')
        return [br([f'not {h}'], set())]


def br(lits, ents):
    return {'lits': list(dict.fromkeys(lits)), 'evars': set(ents)}


def merge(a, b):
    return br(a['lits'] + b['lits'], a['evars'] | b['evars'])


def fmt(x):
    return format(x, 'g')


def attr_evars(tr, branch):
    """Entities engaged by a branch, incl. via attribute vars."""
    out = set(branch['evars'])
    for (ent, _), v in tr.attr_vars.items():
        if any(v in l for l in branch['lits']):
            out.add(ent)
    return out


def translate(ir_text):
    """IR string -> waist program text. Raises IRError only on IR that fails
    lrml-target.md §2 (which run_e2 classifies as model parse_failure)."""
    v = validate_ir(ir_text)
    if not v['parses']:
        raise IRError(v.get('error', 'unparseable IR'))
    if not v['if_then_wellformed']:
        raise IRError('not an if/then statement')
    cond_node, then_node = v['tree'][0], v['tree'][1]
    head = then_node[2][0]
    if not v['known_deontic']:
        # charitable: unknown head operator read as obligation (policy P1)
        head = ('call', 'obligation', then_node[2])
        deontic = 'obligation'
    else:
        deontic = head[1]
    body_node = (head[2][0] if len(head[2]) == 1
                 else ('call', 'and', head[2]))
    # T8 duals: obligation(not phi) == prohibition(phi), and conversely
    while body_node[0] == 'call' and body_node[1] == 'not' \
            and deontic in ('obligation', 'prohibition') and body_node[2]:
        deontic = ('prohibition' if deontic == 'obligation' else 'obligation')
        body_node = body_node[2][0]

    tr = Translator()
    for n in (cond_node, then_node):
        tr.collect_entities(n)

    cond = (tr.bool_dnf(('call', 'and', cond_node[2]))
            if cond_node[2] else [br([], set())])
    cond = _drop_redundant_sorts(cond, tr)
    lines = []
    rid = 0

    for cb in cond:
        lines.append(f'applies :- {", ".join(cb["lits"])}.'
                     if cb['lits'] else 'applies.')

    if deontic == 'permission':
        lines.append('% permission: no violation rule (policy P4)')
    elif deontic == 'prohibition':
        cons = _drop_redundant_sorts(tr.bool_dnf(body_node), tr)
        for cb in cond:
            for fb in cons:
                rid += 1
                body = ', '.join(br(cb['lits'] + fb['lits'], set())['lits'])
                lines.append(f'r{rid}: violation <= {body}.')
    else:                                          # obligation (T10)
        cons = _drop_redundant_sorts(tr.bool_dnf(body_node), tr)
        # T10: sat is parameterized by the entity variables shared between
        # psi and phi *as wholes* — union over consequent branches, so a
        # disjunct that omits the entity cannot collapse a per-object
        # obligation into a global one. A branch that does not engage a head
        # entity binds it via its sort atom; an entity no branch can bind
        # safely is dropped (P3 totality).
        shared = set.intersection(
            *[attr_evars(tr, b) for b in cond]) if cond else set()
        cons_ents = (set.union(*[attr_evars(tr, b) for b in cons])
                     if cons else set())
        head_ents = {e for e in shared & cons_ents
                     if all(e in attr_evars(tr, b) or tr.sort_lits(e)
                            for b in cons)}
        head_vars = sorted(tr.evars[e] for e in head_ents)
        sat = ('obligation_met(' + ', '.join(head_vars) + ')'
               if head_vars else 'obligation_met')
        for fb in cons:
            binds = [l for e in sorted(head_ents - attr_evars(tr, fb))
                     for l in tr.sort_lits(e)]
            lits = binds + fb['lits']
            lines.append(f'{sat} :- {", ".join(lits)}.'
                         if lits else f'{sat}.')
        for cb in cond:
            rid += 1
            body = ', '.join(cb['lits'] + [f'not {sat}'])
            lines.append(f'r{rid}: violation <= {body}.')

    lines += tr.helpers
    header = [
        f'% translated by bracket2waist.py under {POLICY_VERSION}',
        f'% ir-sha256: {hashlib.sha256(ir_text.encode()).hexdigest()[:16]}',
    ] + tr.notes
    return '\n'.join(header + lines) + '\n'


if __name__ == '__main__':
    print(translate(' '.join(sys.argv[1:])))
