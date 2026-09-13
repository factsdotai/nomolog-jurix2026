"""One-command verification: score each hand-authored IR under the frozen v1
translator against its gold suite.  Usage: python3 verify.py  (from this dir)"""
import json, os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.dirname(HERE))
import bracket2waist
from rescore import score_prog
for f in sorted(os.listdir(HERE)):
    if not f.endswith('-flat.ir.txt'):
        continue
    cand = f.split('-')[0]
    cases = json.load(open(os.path.join(os.path.dirname(HERE), '..',
                      'gold-exception', cand, 'cases.json')))['cases']
    prog = bracket2waist.translate(open(os.path.join(HERE, f)).read())
    ok, tot, ex = score_prog(prog, cases)
    print(f'{cand}: {ok}/{tot}' + (' exact' if ex else ''))
