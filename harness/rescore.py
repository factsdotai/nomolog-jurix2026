"""Post-hoc robustness re-scorings over STORED outputs (no API calls).
Primary metric unchanged; these are reported alongside it.

  1. Violation-only (applies-agnostic) scoring: compare only the violation
     bit per case.
  2. Exist-transparent translator ablation: re-translate stored LRML IRs
     with T1 sort atoms suppressed, score both metrics.

Usage: python3 harness/rescore.py   (from papers/jurix-compilation)
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.dirname(HERE)
sys.path.insert(0, HERE)

import bracket2waist                                    # noqa: E402
import bracket2waist_v2                                 # noqa: E402
import waist_eval                                       # noqa: E402

RUNS = ['e2-opus5-waist', 'e2-opus5-lrml', 'e2-haiku-waist', 'e2-haiku-lrml']
SLICES = {'comparability': 'gold', 'exception': 'gold-exception'}


def score_prog(prog_text, cases, violation_only=False):
    try:
        prog = waist_eval.parse_program(prog_text)
    except waist_eval.FragmentError:
        return 0, len(cases), False
    ok = 0
    for c in cases:
        facts = [waist_eval.parse_atom(f.rstrip('.')) for f in c['facts']]
        try:
            a, v = waist_eval.verdict(prog, facts)
        except Exception:
            continue
        good = (v == c['expect']['violation'] if violation_only else
                (a == c['expect']['applies'] and v == c['expect']['violation']))
        ok += good
    return ok, len(cases), ok == len(cases)


def iter_items(run, sl, variant='original'):
    root = os.path.join(BASE, SLICES[sl])
    for d in sorted(os.listdir(root)):
        p = os.path.join(root, d)
        if not os.path.isdir(p):
            continue
        cases = json.load(open(os.path.join(p, 'cases.json')))['cases']
        stem = os.path.join(HERE, 'runs', run, 'out', f'{sl}-{d}-{variant}')
        yield d, cases, stem


# Full-slice uniform-convention readings: the gold's
# frozen labels mix two consistent readings of provision-level exemptions.
# The flip sets are MECHANICAL, derived from the gold encodings themselves:
# a case is defeat-excused iff stripping the superiority relation flips its
# gold violation verdict (provision override = defeat, per the encoding
# line); a case is guard-carved iff it expects (False, False) without being
# a not_applicable control. 'scoping': every defeat-excused case reads
# applies=False. 'liability': every guard-carved case reads applies=True.
def compute_full_flips():
    flips = {'scoping': {}, 'liability': {}}
    root = os.path.join(BASE, 'gold-exception')
    for d in sorted(os.listdir(root)):
        p = os.path.join(root, d)
        if not os.path.isdir(p):
            continue
        prog = waist_eval.parse_program(
            open(os.path.join(p, 'encoding.lp')).read())
        nodefeat = dict(prog, sup=[])
        for c in json.load(open(os.path.join(p, 'cases.json')))['cases']:
            facts = [waist_eval.parse_atom(f.rstrip('.').strip())
                     for f in c['facts']]
            _, v1 = waist_eval.verdict(prog, facts)
            try:
                _, v2 = waist_eval.verdict(nodefeat, facts)
            except Exception:
                v2 = v1
            exp = (c['expect']['applies'], c['expect']['violation'])
            if exp == (True, False) and v1 is False and v2 is True:
                flips['scoping'][(d, c['name'])] = False
            if exp == (False, False) and 'not_applicable' not in c['name']:
                flips['liability'][(d, c['name'])] = True
    return flips


APPLIES_FLIPS = compute_full_flips()


def apply_reading(cand, cases, reading):
    out = []
    for c in cases:
        c = dict(c, expect=dict(c['expect']))
        key = (cand, c['name'])
        if key in APPLIES_FLIPS[reading]:
            c['expect']['applies'] = APPLIES_FLIPS[reading][key]
        out.append(c)
    return out


def table(title, rows):
    print(f'\n## {title}')
    for r in rows:
        print(r)


def main():
    # --- 1. violation-only over all runs/slices (original variant)
    rows = []
    for run in RUNS:
        for sl in SLICES:
            ok = tot = ex = n = 0
            for d, cases, stem in iter_items(run, sl):
                n += 1
                path = stem + '.lp'
                if not os.path.exists(path):
                    tot += len(cases)
                    continue
                o, t, e = score_prog(open(path).read(), cases,
                                     violation_only=True)
                ok += o; tot += t; ex += e
            rows.append(f'{run:18s} {sl:14s} violation-only: '
                        f'case {ok}/{tot} ({ok/tot:.0%}) · exact {ex}/{n} '
                        f'({ex/n:.0%})')
    table('Violation-only (applies-agnostic) scoring, original variants', rows)

    # (legacy monkeypatch ablation table removed:
    # all ablation numbers now come from the same flag-gated
    # path that emits the paper macros, below)

    # --- emit robustness macros for the draft
    def cell(run, sl, vo, ablate=False):
        if ablate:
            bracket2waist.ABLATE_EXIST = True
        translate = (bracket2waist_v2.translate_program
                     if run.endswith('-v2') else bracket2waist.translate)
        ok = tot = ex = n = 0
        for d, cases, stem in iter_items(run, sl):
            n += 1
            if run.endswith('waist'):
                path = stem + '.lp'
                text = open(path).read() if os.path.exists(path) else None
            else:
                path = stem + '.ir.txt'
                text = None
                if os.path.exists(path):
                    try:
                        text = translate(open(path).read())
                    except Exception:
                        text = None
            if text is None:
                tot += len(cases)
                continue
            o, t, e = score_prog(text, cases, violation_only=vo)
            ok += o; tot += t; ex += e
        bracket2waist.ABLATE_EXIST = False
        return round(100 * ex / n), round(100 * ok / tot)

    macros = []
    def emit(name, run, sl, vo, ab=False):
        ex, acc = cell(run, sl, vo, ab)
        macros.append(f'\\newcommand{{\\{name}Ex}}{{{ex}\\%}}')
        macros.append(f'\\newcommand{{\\{name}Acc}}{{{acc}\\%}}')
    emit('VOpusWaistExc', 'e2-opus5-waist', 'exception', True)
    emit('VOpusWaistComp', 'e2-opus5-waist', 'comparability', True)
    emit('VOpusLrmlExc', 'e2-opus5-lrml', 'exception', True)
    emit('VOpusLrmlComp', 'e2-opus5-lrml', 'comparability', True)
    emit('VHaikuWaistExc', 'e2-haiku-waist', 'exception', True)
    emit('VHaikuLrmlExc', 'e2-haiku-lrml', 'exception', True)
    emit('AblOpusLrmlExcPair', 'e2-opus5-lrml', 'exception', False, True)
    emit('AblOpusLrmlCompPair', 'e2-opus5-lrml', 'comparability', False, True)
    emit('AblOpusLrmlExcV', 'e2-opus5-lrml', 'exception', True, True)
    emit('AblOpusLrmlCompV', 'e2-opus5-lrml', 'comparability', True, True)
    emit('TaughtPair', 'e2-opus5-lrml-taught', 'exception', False)
    emit('TaughtAblV', 'e2-opus5-lrml-taught', 'exception', True, True)
    # Experiment 2 ladder arm (LRML-IR+override), frozen / ablated / v-only
    emit('LadOpusExcPair', 'e2-opus5-lrml-v2', 'exception', False)
    emit('LadOpusCompPair', 'e2-opus5-lrml-v2', 'comparability', False)
    emit('LadOpusExcAblPair', 'e2-opus5-lrml-v2', 'exception', False, True)
    emit('LadOpusCompAblPair', 'e2-opus5-lrml-v2', 'comparability', False,
         True)
    emit('LadOpusExcV', 'e2-opus5-lrml-v2', 'exception', True)
    emit('LadHaikuExcPair', 'e2-haiku-lrml-v2', 'exception', False)
    emit('LadHaikuCompPair', 'e2-haiku-lrml-v2', 'comparability', False)
    emit('LadHaikuExcV', 'e2-haiku-lrml-v2', 'exception', True)
    # Violation-only exception exact for every model x LRML-family arm and
    # Nomolog (2026-09-05 revision, T4b: the convention-free metric becomes
    # the primary exception headline; Table 1 / Table 3 columns). Names
    # that already exist above (VOpus*/VHaiku* plain, Lad*ExcV override)
    # are reused in the paper; only the missing cells are emitted here.
    for mtag, mrun in (('Opus', 'opus5'), ('Haiku', 'haiku'),
                       ('Sol', 'sol'), ('Luna', 'luna')):
        for atag, arun in (('Waist', 'waist'), ('Lrml', 'lrml'),
                           ('Lrmlpar', 'lrml-parity'),
                           ('Lrmlovr', 'lrml-v2')):
            name = f'V{mtag}{atag}Exc'
            if any(m.startswith(f'\\newcommand{{\\{name}Ex}}')
                   for m in macros):
                continue
            if atag == 'Lrmlovr' and mtag in ('Opus', 'Haiku'):
                continue  # emitted above as Lad{Opus,Haiku}ExcV
            emit(name, f'e2-{mrun}-{arun}', 'exception', True)
    # --- 3. FULL-SLICE uniform-convention rescore:
    # every provision-level exemption case re-read under each uniform
    # convention, mechanically identified from the gold encodings.
    rows = []
    ALL_RUNS = RUNS + ['e2-opus5-lrml-v2', 'e2-haiku-lrml-v2']
    for reading in ('scoping', 'liability'):
        for run in ALL_RUNS:
            ok = tot = ex = n = 0
            for d, cases, stem in iter_items(run, 'exception'):
                cases = apply_reading(d, cases, reading)
                n += 1
                path = stem + '.lp'
                if not os.path.exists(path):
                    tot += sum(1 for _ in cases)
                    continue
                o, t, e = score_prog(open(path).read(), cases)
                ok += o; tot += t; ex += e
            rows.append(f'{run:18s} exception      reading={reading:9s}: '
                        f'case {ok}/{tot} ({ok/tot:.0%}) · exact {ex}/{n} '
                        f'({ex/n:.0%})')
            key = {'e2-opus5-waist': 'OpusWaist',
                   'e2-opus5-lrml': 'OpusLrml',
                   'e2-opus5-lrml-v2': 'OpusLad',
                   'e2-haiku-waist': 'HaikuWaist',
                   'e2-haiku-lrml': 'HaikuLrml',
                   'e2-haiku-lrml-v2': 'HaikuLad'}.get(run)
            if key:
                tag = 'Scope' if reading == 'scoping' else 'Liab'
                macros.append(f'\\newcommand{{\\Full{tag}{key}ExcEx}}'
                              f'{{{round(100 * ex / n)}\\%}}')
                macros.append(f'\\newcommand{{\\Full{tag}{key}ExcAcc}}'
                              f'{{{round(100 * ok / tot)}\\%}}')
    table('FULL-SLICE uniform applies readings, exception slice '
          '(original variants)', rows)

    # --- 4. translator v1.1: per-suite delta
    # table with regression column, plus v1.1 aggregate macros.
    import bracket2waist_v11
    delta_rows = ['run,slice,cand,variant,'
                  'v1_ok,v11_ok,v11abl_ok,tot,regressed']
    agg = {}
    for run in ('e2-opus5-lrml', 'e2-haiku-lrml'):
        for sl in SLICES:
            for variant in ('original', 'perturbed'):
                key = (run, sl, variant)
                agg[key] = {'v1': [0, 0, 0], 'v11': [0, 0, 0],
                            'v11abl': [0, 0, 0], 'v11ablV': [0, 0, 0],
                            'n': 0, 'reg': 0}
                for d, cases, stem in iter_items(run, sl, variant):
                    ir_path = stem + '.ir.txt'
                    a = agg[key]
                    a['n'] += 1
                    if not os.path.exists(ir_path):
                        for k in ('v1', 'v11', 'v11abl', 'v11ablV'):
                            a[k][1] += len(cases)
                        continue
                    ir = open(ir_path).read()
                    scores = {}
                    for k, fn in (
                            ('v1', lambda t: bracket2waist.translate(t)),
                            ('v11', lambda t: bracket2waist_v11.translate(t)),
                            ('v11abl', lambda t: bracket2waist_v11.translate(
                                t, ablate=True))):
                        try:
                            o, t, e = score_prog(fn(ir), cases)
                        except Exception:
                            o, t, e = 0, len(cases), False
                        scores[k] = (o, t, e)
                        a[k][0] += o; a[k][1] += t; a[k][2] += e
                    try:
                        o, t, e = score_prog(
                            bracket2waist_v11.translate(ir, ablate=True),
                            cases, violation_only=True)
                    except Exception:
                        o, t, e = 0, len(cases), False
                    a['v11ablV'][0] += o; a['v11ablV'][1] += t
                    a['v11ablV'][2] += e
                    reg = scores['v11'][0] < scores['v1'][0]
                    a['reg'] += reg
                    delta_rows.append(
                        f'{run},{sl},{d},{variant},'
                        f'{scores["v1"][0]},{scores["v11"][0]},'
                        f'{scores["v11abl"][0]},{scores["v1"][1]},'
                        f'{int(reg)}')
    with open(os.path.join(HERE, 'runs', 'v11-delta.csv'), 'w') as f:
        f.write('\n'.join(delta_rows) + '\n')
    rows = []
    for (run, sl, variant), a in sorted(agg.items()):
        if variant != 'original':
            continue
        line = (f'{run:18s} {sl:14s} v1 {a["v1"][0]}/{a["v1"][1]} '
                f'ex {a["v1"][2]}/{a["n"]} -> v1.1 '
                f'{a["v11"][0]}/{a["v11"][1]} ex {a["v11"][2]}/{a["n"]} '
                f'-> v1.1+abl {a["v11abl"][0]}/{a["v11abl"][1]} '
                f'ex {a["v11abl"][2]}/{a["n"]} · regressed suites '
                f'{a["reg"]}')
        rows.append(line)
    table('Translator v1.1 upper bound (per-suite deltas in '
          'runs/v11-delta.csv)', rows)
    for run, tag in (('e2-opus5-lrml', 'Opus'), ('e2-haiku-lrml', 'Haiku')):
        for sl, stag in (('comparability', 'Comp'), ('exception', 'Exc')):
            a = agg[(run, sl, 'original')]
            for k, ktag in (('v11', 'Vxi'), ('v11abl', 'VxiAbl'),
                            ('v11ablV', 'VxiAblV')):
                macros.append(
                    f'\\newcommand{{\\{ktag}{tag}{stag}Ex}}'
                    f'{{{round(100 * a[k][2] / a["n"])}\\%}}')
                macros.append(
                    f'\\newcommand{{\\{ktag}{tag}{stag}Acc}}'
                    f'{{{round(100 * a[k][0] / a[k][1])}\\%}}')
            macros.append(f'\\newcommand{{\\Reg{tag}{stag}}}'
                          f'{{{agg[(run, sl, "original")]["reg"]}}}')

    # draft/ is absent in the public companion export; create it so the
    # advertised one-command check works from a fresh clone.
    os.makedirs(os.path.join(BASE, 'draft'), exist_ok=True)
    path = os.path.join(BASE, 'draft', 'generated-robustness.tex')
    with open(path, 'w') as f:
        f.write('% AUTO-GENERATED by harness/rescore.py — do not edit.\n'
                + '\n'.join(macros) + '\n')
    print('wrote', path)


if __name__ == '__main__':
    main()
