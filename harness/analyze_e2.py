"""Cross-run E2 analysis: the headline waist-vs-LRML comparison. Stdlib only.

Usage:  python3 analyze_e2.py <run_dir> [<run_dir> ...]
Reads each run's results.csv; emits a markdown comparison (stdout) with
per-(model, arm, slice, variant) case accuracy and exact-suite rate, the
failure-mode histogram, and the strata breakdown that feeds §5.
"""
import csv
import os
import sys
from collections import defaultdict


def load(run_dir):
    with open(os.path.join(run_dir, 'results.csv')) as f:
        return list(csv.DictReader(f))


def agg(rows):
    if not rows:
        return None
    total = sum(int(r['cases_total']) for r in rows)
    passed = sum(int(r['cases_passed']) for r in rows)
    exact = sum(int(r['suite_exact']) for r in rows)
    return {'n': len(rows), 'case_acc': passed / max(1, total),
            'exact': exact / len(rows)}


def main():
    all_rows = []
    for d in sys.argv[1:]:
        rows = load(d)
        for r in rows:
            r['model_short'] = r['model'].split(':')[-1]
        all_rows += rows

    models = sorted({r['model_short'] for r in all_rows})
    slices = sorted({r['slice'] for r in all_rows})
    variants = sorted({r['variant'] for r in all_rows})

    print('# E2 results — behavioral execution-match\n')
    print('Per cell: exact-suite rate (case-level accuracy in parens), n sentences.\n')
    header = '| model | slice | variant | waist | lrml | Δ exact |'
    print(header)
    print('|' + '---|' * 6)
    for m in models:
        for s in slices:
            for v in variants:
                cells = {}
                for arm in ('waist', 'lrml'):
                    sel = [r for r in all_rows
                           if r['model_short'] == m and r['slice'] == s
                           and r['variant'] == v and r['arm'] == arm]
                    cells[arm] = agg(sel)
                if not (cells['waist'] or cells['lrml']):
                    continue
                def fm(c):
                    return (f"{c['exact']:.0%} ({c['case_acc']:.0%}) n={c['n']}"
                            if c else '—')
                delta = ('' if not (cells['waist'] and cells['lrml']) else
                         f"{cells['waist']['exact'] - cells['lrml']['exact']:+.0%}")
                print(f"| {m} | {s} | {v} | {fm(cells['waist'])} "
                      f"| {fm(cells['lrml'])} | {delta} |")

    print('\n## Failure modes (sentence-level, by model × arm)\n')
    fm_counts = defaultdict(lambda: defaultdict(int))
    for r in all_rows:
        if r['failure_mode']:
            fm_counts[(r['model_short'], r['arm'])][r['failure_mode']] += 1
    for (m, arm), modes in sorted(fm_counts.items()):
        line = ', '.join(f'{k}={v}' for k, v in sorted(modes.items()))
        print(f'- **{m} / {arm}**: {line}')

    print('\n## Strata (original variant only)\n')
    strata = defaultdict(list)
    for r in all_rows:
        if r['variant'] != 'original':
            continue
        for t in (r['tags'].split('|') if r['tags'] else ['untagged']):
            strata[(t, r['model_short'], r['arm'])].append(r)
    print('| stratum | model | waist exact | lrml exact |')
    print('|---|---|---|---|')
    seen = sorted({(t, m) for (t, m, _a) in strata})
    for t, m in seen:
        w = agg(strata.get((t, m, 'waist'), []))
        l = agg(strata.get((t, m, 'lrml'), []))
        print(f"| {t} | {m} "
              f"| {w['exact']:.0%} (n={w['n']})" if w else f"| {t} | {m} | —",
              end='')
        print(f" | {l['exact']:.0%} (n={l['n']}) |" if l else ' | — |')

    print('\n## Contamination control (original vs perturbed, exact-suite)\n')
    for m in models:
        for arm in ('waist', 'lrml'):
            o = agg([r for r in all_rows if r['model_short'] == m
                     and r['arm'] == arm and r['variant'] == 'original'])
            p = agg([r for r in all_rows if r['model_short'] == m
                     and r['arm'] == arm and r['variant'] == 'perturbed'])
            if o and p:
                print(f'- {m} / {arm}: original {o["exact"]:.0%} → '
                      f'perturbed {p["exact"]:.0%} '
                      f'(drop {o["exact"] - p["exact"]:+.0%})')


if __name__ == '__main__':
    main()
