"""Translator v1.1: the second rewriter, with the seven defects fixed.

Absorbs the full adversarial defect ledger on top of the frozen v1
translator (bracket2waist.py, which stays byte-identical as the
pre-registered primary):

  F1 (M2a)  condition atoms are conjoined into satisfaction rules,
            per condition branch (kills spurious self-joins);
  F2 (M2b)  the exist-transparent ablation reaches negation-scope
            helpers (v1 left their sort atoms unablatable);
  F3 (M2c)  bare all-alpha entity operands under domain predicates
            become registered variables, not dead constants
            (digit-bearing operands stay constants: document refs);
  F4 (D4)   negation-scope helpers are parameterized by their inner
            entity variables (v1's propositional helpers quantified
            globally); a terminal safety-repair pass reduces helper
            arity where the call site cannot bind a variable;
  F5 (D5)   is()-emitted sort atoms are registered for ablation;
  F6 (D6)   fixed in bracket2waist._drop_redundant_sorts directly
            (token-boundary variable matching — instrumentation bug);
  F7 (D7)   v1.1 safety-checks its own output; a failure here is a
            translator bug by policy P3 and raises loudly.

D8 (existential-vs-universal sat readings) is a disclosed policy
degree of freedom, not a defect — see the challenge harness.

Usage:  python3 bracket2waist_v11.py "<v1 ir string>"
        translate(ir_text[, ablate=False]) -> program text
"""
import hashlib
import re
import sys

import bracket2waist
from bracket2waist import CMP_MAP, NUM_RE, br
from lrml_ir import IRError, norm_name, validate_ir
import waist_eval

POLICY_VERSION = 'translation-policy.md v1.1 (corrected upper bound)'

ALPHA_ONLY = re.compile(r'^[A-Za-z][A-Za-z ]*$')


class TranslatorV11(bracket2waist.Translator):

    # F3: bare all-alpha operands in argument position are entities
    def term(self, node):
        if node[0] == 'operand':
            raw = node[1].strip()
            if (not bracket2waist.split_attr(raw)
                    and not NUM_RE.match(raw)
                    and not bracket2waist.RATIO_RE.match(raw)
                    and ALPHA_ONLY.match(raw)):
                name = norm_name(raw)
                v = self.var_for(name)
                return v, self.sort_lits(name)
        return super().term(node)

    # F5: register the is()-const-path sort atom for the ablation
    def is_dnf(self, args):
        out = super().is_dnf(args)
        for b in out:
            for lit in b['lits']:
                m = re.match(r'^([a-z][a-z0-9_]*)\((\w+)\)$', lit)
                if m and m.group(1) in self.evars \
                        and self.evars[m.group(1)] == m.group(2):
                    self.sortish.add(lit)
        return out

    # F4: helpers parameterized by inner entity variables
    def negate(self, node):
        if node[0] == 'call' and node[1] in CMP_MAP:
            return [self.cmp_branch(
                bracket2waist.COMPLEMENT[CMP_MAP[node[1]]], node[2])]
        if node[0] == 'call' and node[1] == 'not':
            return self.bool_dnf(node[2][0])
        inner = self.bool_dnf(node)
        self.helper_seq += 1
        h = f'neg_scope_{self.helper_seq}'
        ents = sorted({self.evars[e] for b in inner
                       for e in bracket2waist.attr_evars(self, b)})
        head = f'{h}({", ".join(ents)})' if ents else h
        for b in inner:
            binds = [l for e in sorted(
                {e for e in self.evars
                 if self.evars[e] in ents}
                - bracket2waist.attr_evars(self, b))
                for l in self.sort_lits(e)]
            self.helpers.append(
                f'{head} :- {", ".join(binds + b["lits"])}.')
        return [br([f'not {head}'], set())]


def _repair_safety(lines):
    """F4 terminal repair: if a rule's negative helper literal carries a
    variable unbound in that rule's positive body, drop the variable from
    the helper's arity everywhere. Deterministic fixpoint."""
    for _ in range(5):
        try:
            prog = waist_eval.parse_program('\n'.join(lines) + '\n')
            import safety
            safety.safety_check(prog)
            return lines
        except waist_eval.FragmentError as e:
            m = re.search(r"variable\(s\) (\w+)", str(e))
            if not m:
                raise
            bad = m.group(1)
            # find a helper literal carrying this var; reduce its arity
            hm = None
            for l in lines:
                for call in re.findall(r'neg_scope_\d+\([^)]*\)', l):
                    if re.search(rf'\b{bad}\b', call):
                        hm = call.split('(')[0]
                        break
                if hm:
                    break
            if hm is None:
                raise
            new = []
            for l in lines:
                def shrink(mo):
                    args = [a.strip() for a in
                            mo.group(1).split(',')]
                    args = [a for a in args
                            if not re.fullmatch(bad, a)]
                    return (f'{hm}({", ".join(args)})' if args else hm)
                new.append(re.sub(rf'{hm}\(([^)]*)\)', shrink, l))
            lines = new
    raise waist_eval.FragmentError('safety repair did not converge')


def translate(ir_text, ablate=False):
    """v1 IR -> waist program under the v1.1 corrected policy."""
    v = validate_ir(ir_text)
    if not v['parses']:
        raise IRError(v.get('error', 'unparseable IR'))
    if not v['if_then_wellformed']:
        raise IRError('not an if/then statement')
    cond_node, then_node = v['tree'][0], v['tree'][1]
    head = then_node[2][0]
    if not v['known_deontic']:
        head = ('call', 'obligation', then_node[2])
        deontic = 'obligation'
    else:
        deontic = head[1]
    body_node = (head[2][0] if len(head[2]) == 1
                 else ('call', 'and', head[2]))
    while body_node[0] == 'call' and body_node[1] == 'not' \
            and deontic in ('obligation', 'prohibition') and body_node[2]:
        deontic = ('prohibition' if deontic == 'obligation' else 'obligation')
        body_node = body_node[2][0]

    old_flag = bracket2waist.ABLATE_EXIST
    bracket2waist.ABLATE_EXIST = ablate
    try:
        tr = TranslatorV11()
        for n in (cond_node, then_node):
            tr.collect_entities(n)
        drop = bracket2waist._drop_redundant_sorts
        cond = (tr.bool_dnf(('call', 'and', cond_node[2]))
                if cond_node[2] else [br([], set())])
        cond = drop(cond, tr)
        lines = []
        rid = 0
        for cb in cond:
            lines.append(f'applies :- {", ".join(cb["lits"])}.'
                         if cb['lits'] else 'applies.')
        if deontic == 'permission':
            lines.append('% permission: no violation rule (policy P4)')
        elif deontic == 'prohibition':
            cons = drop(tr.bool_dnf(body_node), tr)
            for cb in cond:
                for fb in cons:
                    rid += 1
                    body = ', '.join(br(cb['lits'] + fb['lits'],
                                        set())['lits'])
                    lines.append(f'r{rid}: violation <= {body}.')
        else:                                # obligation, F1: conjoined sat
            cons = drop(tr.bool_dnf(body_node), tr)
            multi = len(cond) > 1
            for i, cb in enumerate(cond, 1):
                cb_ents = bracket2waist.attr_evars(tr, cb)
                cons_ents = (set.union(
                    *[bracket2waist.attr_evars(tr, b) for b in cons])
                    if cons else set())
                head_ents = cb_ents & cons_ents
                head_vars = sorted(tr.evars[e] for e in head_ents)
                base = f'obligation_met_b{i}' if multi else 'obligation_met'
                sat = (f'{base}(' + ', '.join(head_vars) + ')'
                       if head_vars else base)
                for fb in cons:
                    lits = br(cb['lits'] + fb['lits'], set())['lits']
                    lines.append(f'{sat} :- {", ".join(lits)}.'
                                 if lits else f'{sat}.')
                rid += 1
                body = ', '.join(cb['lits'] + [f'not {sat}'])
                lines.append(f'r{rid}: violation <= {body}.')
        lines += tr.helpers
        rules = [l for l in lines if not l.startswith('%')]
        comments = [l for l in lines if l.startswith('%')]
        lines = _repair_safety(rules) + comments
        header = [
            f'% translated by bracket2waist_v11.py under {POLICY_VERSION}',
            f'% ir-sha256: {hashlib.sha256(ir_text.encode()).hexdigest()[:16]}',
        ] + tr.notes
        out = '\n'.join(header + lines) + '\n'
        # F7: the translator validates its own output, loudly
        prog = waist_eval.parse_program(out)
        import safety
        safety.safety_check(prog)
        waist_eval.stratify(waist_eval.compile_defeat(prog))
        return out
    finally:
        bracket2waist.ABLATE_EXIST = old_flag


if __name__ == '__main__':
    print(translate(' '.join(sys.argv[1:])))
