# Robustness re-scorings — regenerated output of harness/rescore.py

**Single source of truth:** this file is the verbatim output of
`python3 harness/rescore.py`, the same code path that emits the paper's
`draft/generated-robustness.tex` macros. It supersedes the earlier
hand-written RESCORE.md and RESCORE-ablation.md, whose numbers diverged from
the paper's after two instrument corrections (the sat-head conformance fix
interacting with the ablation flag, and the D6 token-boundary fix in
`_drop_redundant_sorts` — a substring-match bug that crashed one stored Haiku
program under ablation and silently counted its cases as failures). The
legacy monkeypatch ablation path that printed a no-op table has been deleted.
Regenerate with: `python3 harness/rescore.py > harness/runs/RESCORE.md` (strip
the trailing 'wrote' line).


## Violation-only (applies-agnostic) scoring, original variants
e2-opus5-waist     comparability  violation-only: case 242/247 (98%) · exact 48/51 (94%)
e2-opus5-waist     exception      violation-only: case 108/114 (95%) · exact 16/20 (80%)
e2-opus5-lrml      comparability  violation-only: case 206/247 (83%) · exact 23/51 (45%)
e2-opus5-lrml      exception      violation-only: case 83/114 (73%) · exact 3/20 (15%)
e2-haiku-waist     comparability  violation-only: case 231/247 (94%) · exact 41/51 (80%)
e2-haiku-waist     exception      violation-only: case 92/114 (81%) · exact 9/20 (45%)
e2-haiku-lrml      comparability  violation-only: case 170/247 (69%) · exact 14/51 (27%)
e2-haiku-lrml      exception      violation-only: case 63/114 (55%) · exact 1/20 (5%)

## FULL-SLICE uniform applies readings, exception slice (original variants)
e2-opus5-waist     exception      reading=scoping  : case 80/114 (70%) · exact 0/20 (0%)
e2-opus5-lrml      exception      reading=scoping  : case 52/114 (46%) · exact 2/20 (10%)
e2-haiku-waist     exception      reading=scoping  : case 64/114 (56%) · exact 0/20 (0%)
e2-haiku-lrml      exception      reading=scoping  : case 33/114 (29%) · exact 1/20 (5%)
e2-opus5-lrml-v2   exception      reading=scoping  : case 43/114 (38%) · exact 0/20 (0%)
e2-haiku-lrml-v2   exception      reading=scoping  : case 37/114 (32%) · exact 0/20 (0%)
e2-opus5-waist     exception      reading=liability: case 98/114 (86%) · exact 13/20 (65%)
e2-opus5-lrml      exception      reading=liability: case 36/114 (32%) · exact 0/20 (0%)
e2-haiku-waist     exception      reading=liability: case 78/114 (68%) · exact 6/20 (30%)
e2-haiku-lrml      exception      reading=liability: case 18/114 (16%) · exact 0/20 (0%)
e2-opus5-lrml-v2   exception      reading=liability: case 35/114 (31%) · exact 0/20 (0%)
e2-haiku-lrml-v2   exception      reading=liability: case 25/114 (22%) · exact 0/20 (0%)

## Translator v1.1 upper bound (per-suite deltas in runs/v11-delta.csv)
e2-haiku-lrml      comparability  v1 108/247 ex 12/51 -> v1.1 132/247 ex 16/51 -> v1.1+abl 128/247 ex 16/51 · regressed suites 0
e2-haiku-lrml      exception      v1 19/114 ex 0/20 -> v1.1 22/114 ex 0/20 -> v1.1+abl 27/114 ex 0/20 · regressed suites 0
e2-opus5-lrml      comparability  v1 144/247 ex 19/51 -> v1.1 151/247 ex 21/51 -> v1.1+abl 150/247 ex 23/51 · regressed suites 0
e2-opus5-lrml      exception      v1 38/114 ex 0/20 -> v1.1 37/114 ex 0/20 -> v1.1+abl 51/114 ex 3/20 · regressed suites 1
