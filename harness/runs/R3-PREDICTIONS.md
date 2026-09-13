# R3 recipe-parity run — pre-committed predictions

Committed BEFORE the first scored generation (this commit's hash + timestamp
is the pre-registration). Parity per the shepherd's four conditions:
verdict-ontology sentence verbatim, worked consequent-disjunct example on an
invented sentence ("site hoardings", absent from both slices and all gold
vocabulary), waist block unchanged, k=30, same exemplars/schema/retries.
Runs: e2-opus5-lrml-parity, e2-haiku-lrml-parity — both slices, both
variants.

## Shepherd's pre-committed result bands (exception, verdict-pair exact)

- Opus: <=2/20 confirms the reliability thesis; >=7/20 materially refutes;
  3-6 partial. Haiku: <=2 confirms; >=5 refutes.

## Author point predictions (verdict-pair, original variants)

| cell | prediction |
|---|---|
| Opus exception exact | 1/20 (prior: taught-run 0/20; ontology statement is new information, may move 0-2 suites) |
| Opus exception case-acc | 35% (33% v1 + small applies recovery) |
| Opus comparability exact | 19/51 +-3 (recipe should not disturb; spurious-disjunct risk small) |
| Haiku exception exact | 0/20 |
| Haiku comparability exact | 12/51 +-3 |

Interpretation committed in advance: confirming band => M3's information
half is retired (ontology stated, recipe shown, still no exploitation);
refuting band => the paper re-headlines the prompt-ontology asymmetry as a
primary finding about prior evaluations. Either way reported.

## OUTCOME (appended after both runs; predictions above untouched)

| cell | predicted | actual | band |
|---|---|---|---|
| Opus exception exact | 1/20 | **4/20 (20%)** | shepherd PARTIAL (3-6) |
| Opus exception case-acc | 35% | 41.2% | — |
| Opus comparability exact | 19/51 +-3 | 21/51 | within |
| Haiku exception exact | 0/20 | **0/20** | shepherd CONFIRMING |
| Haiku comparability exact | 12/51 +-3 | 14/51 | within |

The 4 closed Opus suites (cand01, cand21, cand56, cand65) all use the
consequent-disjunct rendering — cand01's output is structurally identical to
the reviewer's counterexample IR. The verdict-ontology statement did what
strategy exemplars alone (taught run: 0/20) did not: with the scored
convention STATED, the frontier model finds the winning rendering on a fifth
of the slice; the weaker model cannot use the information at all. Surviving
margins to Nomolog under full information parity: exception exact 20% vs 55%
(CIs [6,44] vs [32,77], overlapping at n=20), exception case-acc 41% vs 84%,
comparability exact 41% vs 82%. Per the pre-committed interpretation: the
prompt-ontology asymmetry accounts for a real, now-quantified fraction of
the exception exact-suite gap (~20 of 55 points, Opus); the majority of the
gap survives information parity on every metric.


_Freeze-to-first-generation interval: ~12 seconds (commit 816da97 10:04:30; launcher started immediately after push). Same-repo, same-author pre-registration; no external registry._
