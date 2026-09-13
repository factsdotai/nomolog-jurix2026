"""Unit + regression tests for the v2 (LRML-IR+override) pipeline.

Run:  python3 harness/test_v2.py     (from papers/jurix-compilation)

Covers: v1-equivalence on every stored single-statement IR (behavioral
regression over gold suites), the override defeat path against real gold,
and the grammar edge cases of lrml-target-v2.md (dangling/inert overrides,
auto-labels, unconditional exemptions, substitute duties).
"""
import glob
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.dirname(HERE)
sys.path.insert(0, HERE)

import bracket2waist                                     # noqa: E402
import bracket2waist_v2                                  # noqa: E402
import lrml_ir_v2                                        # noqa: E402
import waist_eval                                        # noqa: E402
from rescore import score_prog                           # noqa: E402

FAILURES = []


def check(name, cond, detail=''):
    status = 'ok' if cond else 'FAIL'
    print(f'  [{status}] {name}' + (f' — {detail}' if detail and not cond
                                    else ''))
    if not cond:
        FAILURES.append((name, detail))


def gold_cases(slice_dir, cand):
    p = os.path.join(BASE, slice_dir, cand, 'cases.json')
    return json.load(open(p))['cases']


# ---------------------------------------------------------------- 1. v1 parity
def test_v1_parity():
    """v2 must be a conservative extension of v1, checked over every stored
    IR from every run:

      (a) on runs whose arm uses v1's grammar (everything except the
          ``*-v2`` override-arm runs), v1 and v2 must score identically;
      (b) across ALL runs, wherever v1 succeeds at all, v1 and v2 must
          score identically (conservativity — v2's added constructs must
          not change the meaning of v1-grammar input);
      (c) a v1 parse error may occur ONLY in a ``*-v2`` run, where the
          model used the override grammar's added constructs (statement
          labels), which v1 rejects by design. A v1 error anywhere else is
          a failure worth human eyes.

    History: the original sweep predated the override/parity/statement/
    OpenAI runs (305 stored IRs, all v1-grammar, hence the old "305/305"
    figure); the corpus has since grown and includes override-arm IRs that
    v1 correctly rejects, so blanket identity is the wrong invariant."""
    print('\n# v1 parity over stored IRs')
    n = same = 0
    v2_grammar = []
    diffs = []
    for ir_path in sorted(glob.glob(os.path.join(
            HERE, 'runs', '*', 'out', '*.ir.txt'))):
        run = os.path.basename(os.path.dirname(os.path.dirname(ir_path)))
        is_v2_run = run.endswith('-v2')
        stem = os.path.basename(ir_path)[:-len('.ir.txt')]
        sl, rest = stem.split('-', 1)
        cand, variant = rest.rsplit('-', 1)
        slice_dir = 'gold' if sl == 'comparability' else 'gold-exception'
        try:
            cases = gold_cases(slice_dir, cand)
        except FileNotFoundError:
            continue
        ir = open(ir_path).read()
        try:
            p1 = bracket2waist.translate(ir)
            s1 = score_prog(p1, cases)
        except Exception as e:
            p1, s1 = None, ('v1-error', str(e))
        try:
            p2 = bracket2waist_v2.translate_program(ir)
            s2 = score_prog(p2, cases)
        except Exception as e:
            p2, s2 = None, ('v2-error', str(e))
        n += 1
        if s1 == s2:
            same += 1
        elif s1[0] == 'v1-error' and is_v2_run:
            v2_grammar.append(ir_path)       # (c): expected, v2-only grammar
        else:
            diffs.append((ir_path, s1, s2))  # violates (a) or (b)
    check(f'v1 parity: {same}/{n - len(v2_grammar)} identical on v1-grammar '
          f'IRs ({len(v2_grammar)} v2-arm IRs use v2-only grammar; v1 '
          'rejects them by design)', not diffs,
          '; '.join(f'{os.path.basename(p)}: {a} vs {b}'
                    for p, a, b in diffs[:5]))


# ------------------------------------------------------- 2. override vs. gold
CAND02_V2 = """\
base: if( replacement generation system( new system, existing system)), \
then( obligation( greater than equal( new system. capacity, \
existing system. capacity)))
exc: if( and( replacement generation system( new system, existing system), \
demonstrated more appropriate( new system))), then( permission( \
exist( new system)))
override( exc, base)"""


def test_override_gold():
    print('\n# override path against real gold suites')
    prog = bracket2waist_v2.translate_program(CAND02_V2)
    ok, tot, exact = score_prog(prog, gold_cases('gold-exception', 'cand02'))
    check(f'cand02 v2 IR scores {ok}/{tot}', exact)
    # the same program parses under the frozen evaluator + safety
    p = waist_eval.parse_program(prog)
    waist_eval.stratify(waist_eval.compile_defeat(p))
    check('cand02 v2 program stratifies', True)


# --------------------------------------------------------------- 3. edge cases
def test_edges():
    print('\n# grammar edge cases')
    t = bracket2waist_v2.translate_program

    dangling = t("""base: if( exist( door)), then( obligation( \
greater than equal( door. width, 800 mm)))
override( ghost, base)""")
    check('dangling override noted + skipped',
          '% override-dangling' in dangling and 'exempt' not in dangling)

    inert = t("""base: if( exist( door)), then( permission( exist( door)))
exc: if( and( exist( door), utility( door))), then( permission( \
exist( door)))
override( exc, base)""")
    check('override of permission statement is inert',
          '% override-inert' in inert)

    auto = t("""if( exist( door)), then( obligation( greater than equal( \
door. width, 800 mm)))""")
    check('single unlabeled statement translates (v1 form)',
          'obligation_met' in auto and 'applies :- door(Door).' in auto)

    two_obl = t("""a: if( exist( door)), then( obligation( \
greater than equal( door. width, 800 mm)))
b: if( exist( window)), then( obligation( greater than equal( \
window. area, 1 m2)))""")
    check('two obligations get distinct sat heads',
          'obligation_met_a' in two_obl and 'obligation_met_b' in two_obl)

    sub = t("""base: if( exist( door)), then( obligation( \
greater than equal( door. width, 800 mm)))
exc: if( and( exist( door), fire door( door))), then( obligation( \
greater than equal( door. width, 600 mm)))
override( exc, base)""")
    check('substitute duty: exemption + own violation machinery',
          'exempt_exc' in sub and sub.count('violation <=') == 2)
    check('substitute duty contributes no applies',
          'fire_door' not in '\n'.join(
              l for l in sub.splitlines() if l.startswith('applies')))

    # exempt case under the substitute duty: narrow door that is a fire
    # door within its own limit -> applies, no violation
    p = waist_eval.parse_program(sub)
    def verdict(facts):
        return waist_eval.verdict(
            p, [waist_eval.parse_atom(f) for f in facts])
    check('substitute duty verdicts',
          verdict(['door(d1)', 'width(d1, 700)', 'fire_door(d1)'])
          == (True, False)
          and verdict(['door(d1)', 'width(d1, 700)']) == (True, True)
          and verdict(['door(d1)', 'width(d1, 500)', 'fire_door(d1)'])
          == (True, True),
          'expected exempt/violating/substitute-violating')


def main():
    test_v1_parity()
    test_override_gold()
    test_edges()
    print(f'\n{"ALL PASS" if not FAILURES else f"{len(FAILURES)} FAILURES"}')
    sys.exit(1 if FAILURES else 0)


if __name__ == '__main__':
    main()
