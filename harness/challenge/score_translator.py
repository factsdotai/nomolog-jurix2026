"""Score a candidate LRML-IR translator against every stored model IR.

Usage: python3 score_translator.py <module.py>   (from this directory)
"""
import importlib.util
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
HARNESS = os.path.dirname(HERE)
BASE = os.path.dirname(HARNESS)
sys.path.insert(0, HARNESS)

import bracket2waist                                     # noqa: E402
import bracket2waist_v11                                 # noqa: E402
from rescore import score_prog                           # noqa: E402

SLICES = {'comparability': 'gold', 'exception': 'gold-exception'}


def load(path):
    spec = importlib.util.spec_from_file_location('candidate', path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def main():
    cand = load(sys.argv[1])
    def v1_abl(ir):
        old = bracket2waist.ABLATE_EXIST
        bracket2waist.ABLATE_EXIST = True
        try:
            return bracket2waist.translate(ir)
        finally:
            bracket2waist.ABLATE_EXIST = old

    translators = [('v1', bracket2waist.translate),
                   ('v1+abl', v1_abl),
                   ('v1.1', bracket2waist_v11.translate),
                   ('v1.1+abl',
                    lambda ir: bracket2waist_v11.translate(ir, ablate=True)),
                   ('candidate', cand.translate)]
    for run in ('e2-opus5-lrml', 'e2-haiku-lrml'):
        for sl, root in SLICES.items():
            for variant in ('original', 'perturbed'):
                agg = {name: [0, 0, 0] for name, _ in translators}
                n = 0
                for d in sorted(os.listdir(os.path.join(BASE, root))):
                    p = os.path.join(BASE, root, d)
                    if not os.path.isdir(p):
                        continue
                    ir_path = os.path.join(
                        HARNESS, 'runs', run, 'out',
                        f'{sl}-{d}-{variant}.ir.txt')
                    if not os.path.exists(ir_path):
                        continue
                    n += 1
                    cases = json.load(
                        open(os.path.join(p, 'cases.json')))['cases']
                    ir = open(ir_path).read()
                    for name, fn in translators:
                        try:
                            o, t, e = score_prog(fn(ir), cases)
                        except Exception:
                            o, t, e = 0, len(cases), False
                        a = agg[name]
                        a[0] += o; a[1] += t; a[2] += e
                print(f'{run} {sl} {variant} (n={n}):')
                for name, (o, t, e) in agg.items():
                    print(f'  {name:10s} case {o}/{t} · exact {e}/{n}')


if __name__ == '__main__':
    main()
