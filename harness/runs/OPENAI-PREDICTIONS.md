# Second-vendor columns (GPT-5.6 Sol / Luna) — pre-committed predictions

Committed as the pre-registration. Timing amendment (review 3): the commit
(10:42:28) postdates the first cached completion by 29 seconds (10:41:59) —
the run launcher was started while the commit was being written. Nothing is
observable 29 seconds into a 568-generation run, and the reviewer verified
the predictions were never touched after the fact (git history), but the
original "committed BEFORE the first scored generation" was literally false
and is hereby corrected. Runs: {sol, luna} x {waist, lrml, lrml-parity, lrml-v2},
both slices, both variants, k=30, same exemplars/prompts/schema/retries as
the Anthropic columns; frozen v1 translator; verdict-pair primary.

## Point predictions (exact-suite, original variants)

| cell | Sol (frontier) | Luna (small) |
|---|---|---|
| Nomolog comparability | 80% (band 70-90) | 65% (band 50-75) |
| Nomolog exception | 50% (band 35-65) | 20% (band 5-35) |
| LRML-IR comparability | 35% (band 25-45) | 20% (band 10-30) |
| LRML-IR exception | 0% (band 0-5) | 0% (band 0-5) |
| LRML-IR parity comparability | 37% (band 27-47) | 22% (band 10-30) |
| LRML-IR parity exception | 15% (band 5-30) | 0% (band 0-5) |
| LRML-IR+override comparability | 33% (band 23-43) | 25% (band 10-32) |
| LRML-IR+override exception | 0% (band 0-10) | 0% (band 0-5) |

## Pre-registered qualitative claims

1. Ordering replicates: Nomolog beats every broad arm in every cell, both
   OpenAI models (the vendor-artifact hypothesis predicts otherwise).
2. The information effect replicates on the frontier tier only:
   Sol-parity > Sol-flat on exception exact; Luna-parity ~ Luna-flat ~ 0.
3. Cross-vendor capability inversion replicates: Luna+Nomolog beats
   Sol+LRML-IR on comparability exact.
4. Override arm recovers ~nothing on both tiers (as on Anthropic).

Failure of claim 1 = the reliability advantage is partly vendor-specific,
reported as a primary finding. All cells reported either way.

## OUTCOME (appended after all 8 runs; predictions above untouched)

16 cells, exact-suite, original variants — 11/16 in band:

| cell | band | actual | | cell | band | actual |
|---|---|---|---|---|---|---|
| Sol waist comp | 70-90 | 74.5 ✓ | | Luna waist comp | 50-75 | 72.5 ✓ |
| Sol waist exc | 35-65 | 65 ✓ | | Luna waist exc | 5-35 | **50 ✗ high** |
| Sol lrml comp | 25-45 | **23.5 ✗ low** | | Luna lrml comp | 10-30 | 27.5 ✓ |
| Sol lrml exc | 0-5 | 0 ✓ | | Luna lrml exc | 0-5 | 0 ✓ |
| Sol parity comp | 27-47 | 37.3 ✓ | | Luna parity comp | 10-30 | **43.1 ✗ high** |
| Sol parity exc | 5-30 | 10 ✓ | | Luna parity exc | 0-5 | **10 ✗ high** |
| Sol v2 comp | 23-43 | **11.8 ✗ low** | | Luna v2 comp | 10-32 | 31.4 ✓ |
| Sol v2 exc | 0-10 | 0 ✓ | | Luna v2 exc | 0-5 | 0 ✓ |

Qualitative claims: **1 CONFIRMED** (Nomolog wins all 16 cells; margins
over the flat IR 45-65 exact points on original variants, 35-65 including
perturbed, 29-55 over each cell's best broad arm); **2 PARTIAL** (information
effect replicates on Sol as predicted, but Luna also benefits — the
"frontier-only" formulation was wrong; refined: a capability threshold that
Haiku 4.5 sits below, Luna above); **3 CONFIRMED** in strongest form
(Luna+Nomolog 72.5% > Sol+LRML-IR 23.5%); **4 CONFIRMED** (override 0%
exception exact on both tiers, 15/20 adoption each; Sol's comparability
additionally DEGRADED under the multi-statement grammar, 23.5->11.8, 24
runtime rejects — the added expressiveness is net harmful there).
Notable: the narrow target barely degrades across OpenAI tiers
(74.5->72.5 comp) — vendor-artifact hypothesis dead; of the five band
misses, three favor the headline (Luna waist exception high, Sol flat-IR
comparability low, Sol override comparability low) and two favor the broad
arm (Luna parity, both slices).


_Interval note: see timing amendment above (commit 29 seconds after launcher start). Same-repo, same-author pre-registration; no external registry._
