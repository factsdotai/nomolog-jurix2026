"""Reference evaluator for the E2 waist fragment (waist-fragment.md, FROZEN v1).

Implements spec §2: defeat compiled to stratified negation, Boolean reading only.
Stdlib only. One statement per line; '%' comments.

Usage:
  python3 waist_eval.py check <gold_dir>...   # verify cases.json verdicts per gold dir
  python3 waist_eval.py check-all <gold_root> # all subdirs containing encoding.lp

Limitation (matches E2 v1 scope): defeat is tracked per rule id, so defeasible-rule
heads engaged in conflicts are treated propositionally (`violation`, `permitted`, ...).
This mirrors c2-toy's propositional defeat; first-order heads never conflict in E2 gold.
"""
import json, os, re, sys
from itertools import product

TOKEN = re.compile(r'^[a-z][a-z0-9_]*$')
NUM = re.compile(r'^-?\d+(\.\d+)?$')
CMP_OPS = ('>=', '<=', '!=', '>', '<', '=')


class FragmentError(Exception):
    pass


def parse_term(s):
    s = s.strip()
    if NUM.match(s):
        return ('num', float(s))
    if s[0].isupper():
        return ('var', s)
    if TOKEN.match(s):
        return ('const', s)
    raise FragmentError(f"bad term: {s!r}")


def split_top(s):
    parts, depth, cur = [], 0, ''
    for ch in s:
        if ch == '(':
            depth += 1
        elif ch == ')':
            depth -= 1
        if ch == ',' and depth == 0:
            parts.append(cur)
            cur = ''
        else:
            cur += ch
    if cur.strip():
        parts.append(cur)
    return [p.strip() for p in parts]


def parse_atom(s):
    s = s.strip()
    m = re.match(r'^([a-z][a-z0-9_]*)\s*(?:\((.*)\))?$', s)
    if not m:
        raise FragmentError(f"bad atom: {s!r}")
    name, args = m.group(1), m.group(2)
    return (name, tuple(parse_term(a) for a in split_top(args)) if args else ())


def parse_numterm(s):
    s = s.strip()
    m = re.match(r'^(-?\d+(?:\.\d+)?)\s*\*\s*([A-Z][A-Za-z0-9_]*)$', s)
    if m:
        return ('scaled', float(m.group(1)), m.group(2))
    return parse_term(s)


def parse_literal(s):
    s = s.strip()
    for op in CMP_OPS:
        # split on comparison operator outside parens
        depth = 0
        for i in range(len(s) - len(op) + 1):
            if s[i] == '(':
                depth += 1
            elif s[i] == ')':
                depth -= 1
            elif depth == 0 and s[i:i + len(op)] == op:
                # avoid matching '>' inside '>='  /  '<' inside '<='
                if op in ('>', '<', '=') and i + 1 < len(s) and s[i + 1] == '=':
                    continue
                left, right = s[:i], s[i + len(op):]
                if re.search(r'[a-z]\w*\s*\($', left.strip()):
                    continue
                return ('cmp', op, parse_numterm(left), parse_numterm(right))
    if s.startswith('not '):
        return ('neg',) + parse_atom(s[4:])
    return ('pos',) + parse_atom(s)


def parse_program(text):
    """Returns dict with facts, rules [(head_atom, body_literals, kind, rid)],
    superiority pairs, conflict pairs."""
    facts, rules, sup, conflicts = [], [], [], []
    for ln, raw in enumerate(text.splitlines(), 1):
        line = raw.split('%')[0].strip()
        if not line:
            continue
        if not line.endswith('.'):
            raise FragmentError(f"line {ln}: statement must end with '.'")
        line = line[:-1].strip()
        try:
            if line.startswith('#conflict'):
                a, b = split_top(line[len('#conflict'):])
                conflicts.append((parse_atom(a)[0], parse_atom(b)[0]))
            elif re.match(r'^r\d+\s*>\s*r\d+$', line):
                a, b = [x.strip() for x in line.split('>')]
                sup.append((a, b))
            elif ':-' in line:
                head, body = line.split(':-', 1)
                rules.append((parse_atom(head), [parse_literal(l) for l in split_top(body)],
                              'strict', None))
            elif '<=' in line and re.match(r'^r\d+\s*:', line):
                rid, rest = line.split(':', 1)
                head, body = rest.split('<=', 1)
                rules.append((parse_atom(head), [parse_literal(l) for l in split_top(body)],
                              'defeasible', rid.strip()))
            else:
                facts.append(parse_atom(line))
        except FragmentError as e:
            raise FragmentError(f"line {ln}: {e}")
    return {'facts': facts, 'rules': rules, 'sup': sup, 'conflicts': conflicts}


def compile_defeat(prog):
    """Spec §2(2)-(3): h <= B under rule r becomes  h :- B, not __defeated_r ;
    __defeated_r :- B' for each superior conflicting rule r'. Applicability variant."""
    out = []
    by_id = {rid: (h, b) for (h, b, k, rid) in prog['rules'] if k == 'defeasible'}
    conf = set()
    for a, b in prog['conflicts']:
        conf.add((a, b))
        conf.add((b, a))
    for head, body, kind, rid in prog['rules']:
        if kind == 'strict':
            out.append((head, body))
            continue
        guard = (f'__defeated_{rid}', ())
        out.append((head, body + [('neg',) + guard]))
        for (sup_id, inf_id) in prog['sup']:
            if inf_id != rid or sup_id not in by_id:
                continue
            sup_head, sup_body = by_id[sup_id]
            if (sup_head[0], head[0]) in conf:
                out.append((guard, list(sup_body)))
    return out


def stratify(rules):
    """Assign strata; raise FragmentError on a cycle through negation (K6)."""
    preds = {h[0] for h, _ in rules}
    for _, body in rules:
        preds |= {l[1] for l in body if l[0] in ('pos', 'neg')}
    stratum = {p: 0 for p in preds}
    for _ in range(len(preds) + 1):
        changed = False
        for h, body in rules:
            for l in body:
                if l[0] == 'pos' and stratum[h[0]] < stratum[l[1]]:
                    stratum[h[0]] = stratum[l[1]]; changed = True
                elif l[0] == 'neg' and stratum[h[0]] < stratum[l[1]] + 1:
                    stratum[h[0]] = stratum[l[1]] + 1; changed = True
        if not changed:
            return stratum
    raise FragmentError("not stratifiable: cycle through negation/defeat (rejected per K6)")


def term_val(t, env):
    kind = t[0]
    if kind == 'num':
        return t[1]
    if kind == 'const':
        return t[1]
    if kind == 'var':
        return env[t[1]]
    if kind == 'scaled':
        v = env[t[2]]
        if not isinstance(v, float):
            raise FragmentError(f"scaled term over non-number: {t}")
        return t[1] * v
    raise FragmentError(f"bad term {t}")


def cmp_holds(op, a, b):
    if not (isinstance(a, float) and isinstance(b, float)):
        if op == '=':
            return a == b
        if op == '!=':
            return a != b
        raise FragmentError(f"ordered comparison over non-numbers: {a} {op} {b}")
    return {'>=': a >= b, '<=': a <= b, '>': a > b, '<': a < b,
            '=': a == b, '!=': a != b}[op]


def match_atom(atom, fact, env):
    name, args = atom
    if name != fact[0] or len(args) != len(fact[1]):
        return None
    env = dict(env)
    for t, v in zip(args, fact[1]):
        if t[0] == 'var':
            if t[1] in env:
                if env[t[1]] != v:
                    return None
            else:
                env[t[1]] = v
        elif term_val(t, env) != v:
            return None
    return env


def eval_program(prog, extra_facts=()):
    rules = compile_defeat(prog)
    stratum = stratify(rules)
    db = set()
    for name, args in list(prog['facts']) + list(extra_facts):
        db.add((name, tuple(term_val(t, {}) for t in args)))
    for s in sorted(set(stratum.values())):
        layer = [(h, b) for h, b in rules if stratum[h[0]] == s]
        changed = True
        while changed:
            changed = False
            for head, body in layer:
                for env in satisfy(body, db, {}):
                    ground = (head[0], tuple(term_val(t, env) for t in head[1]))
                    if ground not in db:
                        db.add(ground)
                        changed = True
    return db


def satisfy(body, db, env):
    """Yield all environments satisfying the body: positive atoms join against db,
    then comparisons and negations check (safety guarantees groundness)."""
    pos = [l for l in body if l[0] == 'pos']
    rest = [l for l in body if l[0] != 'pos']

    def join(i, env):
        if i == len(pos):
            for l in rest:
                if l[0] == 'cmp':
                    if not cmp_holds(l[1], term_val(l[2], env), term_val(l[3], env)):
                        return
                elif l[0] == 'neg':
                    ground = (l[1], tuple(term_val(t, env) for t in l[2]))
                    if ground in db:
                        return
            yield env
            return
        _, name, args = pos[i]
        for fact in [f for f in db if f[0] == name]:
            env2 = match_atom((name, args), fact, env)
            if env2 is not None:
                yield from join(i + 1, env2)

    yield from join(0, env)


def verdict(prog, case_facts):
    db = eval_program(prog, case_facts)
    applies = ('applies', ()) in db
    violation = ('violation', ()) in db
    if violation and not applies:
        raise FragmentError("encoding derives violation without applies (spec §5)")
    return applies, violation


def check_gold_dir(path):
    prog = parse_program(open(os.path.join(path, 'encoding.lp')).read())
    cases = json.load(open(os.path.join(path, 'cases.json')))['cases']
    failures = []
    for c in cases:
        facts = [parse_atom(f.rstrip('.').strip()) for f in c['facts']]
        applies, violation = verdict(prog, facts)
        exp = c['expect']
        ok = applies == exp['applies'] and violation == exp['violation']
        print(f"  {'PASS' if ok else 'FAIL'}  {c['name']}: "
              f"got (applies={applies}, violation={violation})")
        if not ok:
            failures.append(c['name'])
    return failures


def main():
    if len(sys.argv) < 3 or sys.argv[1] not in ('check', 'check-all'):
        print(__doc__)
        sys.exit(2)
    dirs = sys.argv[2:]
    if sys.argv[1] == 'check-all':
        root = sys.argv[2]
        dirs = sorted(os.path.join(root, d) for d in os.listdir(root)
                      if os.path.isfile(os.path.join(root, d, 'encoding.lp')))
        # flat layout (e.g. e3-121/): the root itself is a gold dir
        if not dirs and os.path.isfile(os.path.join(root, 'encoding.lp')):
            dirs = [root]
    bad = 0
    for d in dirs:
        print(f"{d}:")
        fails = check_gold_dir(d)
        bad += len(fails)
    print(f"\n{'ALL PASS' if bad == 0 else f'{bad} FAILURES'} across {len(dirs)} gold dirs")
    sys.exit(0 if bad == 0 else 1)


if __name__ == '__main__':
    main()
