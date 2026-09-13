#!/usr/bin/env python3
"""Re-score every stored program against the current reference suites and
rewrite results.csv and summary.md for each run, with no model calls.

run_e2.py scores at generation time. If a suite or an evaluator rule changes
afterwards, the scoring columns of results.csv go stale. This script
recomputes cases_passed, cases_total, suite_exact, failure_mode and
notes for every row whose program was stored under out/, using the same
scoring logic as run_e2.score, and leaves rows without a stored program
(generation or parse failures) untouched. gen_tex.py then regenerates the
paper's macros from the rewritten results.csv.
"""
import csv
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import waist_eval                                # noqa: E402
from safety import safety_check                  # noqa: E402

GOLD = {'comparability': os.path.join(HERE, '..', 'gold'),
        'exception': os.path.join(HERE, '..', 'gold-exception')}


def score(prog_text, cases):
    """Same contract as run_e2.score: (passed, total, failure_mode, notes)."""
    try:
        prog = waist_eval.parse_program(prog_text)
        safety_check(prog)
    except waist_eval.FragmentError as e:
        return 0, len(cases), 'emitted_unparseable', str(e)
    passed, notes, mode = 0, [], ''
    for c in cases:
        facts = [waist_eval.parse_atom(f.rstrip('.').strip()) for f in c['facts']]
        try:
            applies, violation = waist_eval.verdict(prog, facts)
        except (waist_eval.FragmentError, KeyError, RecursionError) as e:
            notes.append(f"{c['name']}: {e}")
            mode = mode or 'runtime_reject'
            continue
        exp = c['expect']
        if applies == exp['applies'] and violation == exp['violation']:
            passed += 1
        else:
            notes.append(f"{c['name']}: got ({applies},{violation})")
    if passed < len(cases) and not mode:
        mode = 'verdict_mismatch'
    return passed, len(cases), mode if passed < len(cases) else '', '; '.join(notes[:4])


def write_summary(run_dir, rows, run, arm, model):
    def agg(sel):
        n = len(sel)
        if not n:
            return '—'
        acc = sum(int(r['cases_passed']) for r in sel) / max(1, sum(int(r['cases_total']) for r in sel))
        exact = sum(int(r['suite_exact']) for r in sel) / n
        return f'n={n} · case-acc {acc:.1%} · exact-suite {exact:.1%}'
    lines = [f'# Run {run} — arm={arm} model={model} k={rows[0]["k"] if rows else 0}', '']
    for slice_name in sorted({r['slice'] for r in rows}):
        for variant in sorted({r['variant'] for r in rows}):
            sel = [r for r in rows if r['slice'] == slice_name and r['variant'] == variant]
            if sel:
                lines.append(f'- **{slice_name} / {variant}**: {agg(sel)}')
    lines.append('')
    modes = {}
    for r in rows:
        if r['failure_mode']:
            modes[r['failure_mode']] = modes.get(r['failure_mode'], 0) + 1
    if modes:
        lines.append('Failure modes: ' + ', '.join(f'{k}={v}' for k, v in sorted(modes.items())))
    tagged = {}
    for r in rows:
        for t in (r['tags'].split('|') if r['tags'] else []):
            tagged.setdefault(t, []).append(r)
    for t, sel in sorted(tagged.items()):
        lines.append(f'- stratum **{t}**: {agg(sel)}')
    with open(os.path.join(run_dir, 'summary.md'), 'w') as f:
        f.write('\n'.join(lines) + '\n')


def main():
    changed_total = 0
    for run in sorted(os.listdir(os.path.join(HERE, 'runs'))):
        run_dir = os.path.join(HERE, 'runs', run)
        path = os.path.join(run_dir, 'results.csv')
        if not run.startswith('e2-') or not os.path.exists(path):
            continue
        with open(path) as f:
            rows = list(csv.DictReader(f))
        fields = list(rows[0].keys())
        changed = 0
        for r in rows:
            stem = os.path.join(run_dir, 'out', f"{r['slice']}-{r['example_id']}-{r['variant']}")
            if not os.path.exists(stem + '.lp'):
                continue
            cases = json.load(open(os.path.join(GOLD[r['slice']], r['example_id'], 'cases.json')))['cases']
            passed, total, mode, notes = score(open(stem + '.lp').read(), cases)
            new = {'cases_passed': str(passed), 'cases_total': str(total),
                   'suite_exact': str(int(passed == total)), 'failure_mode': mode,
                   'notes': notes[:200]}
            if any(r[k] != v for k, v in new.items()):
                changed += 1
                r.update(new)
        with open(path, 'w', newline='') as f:
            w = csv.DictWriter(f, fields)
            w.writeheader()
            w.writerows(rows)
        write_summary(run_dir, rows, run, rows[0]['arm'], rows[0]['model'])
        changed_total += changed
        print(f'{run:24s} rows changed: {changed}')
    print(f'total rows changed: {changed_total}')


if __name__ == '__main__':
    main()
