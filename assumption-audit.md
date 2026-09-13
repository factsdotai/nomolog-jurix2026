# Unstated-assumption audit (the ContractNLI-SMT check) — 2026-08-10

**Question.** Case suites are finite, so a behaviorally *exact* encoding can still
smuggle in semantic content the sentence never licensed. Following the faithfulness
methodology of the ContractNLI-SMT study, we re-annotated a seed-locked sample of
**passing** encodings (seed 20260810; `harness/runs/audit-sample.txt`): 15 exact-suite
Opus 5 waist encodings + 5 exact-suite Opus 5 LRML translations, sentence vs encoding,
listing every assumption not stated in the source.

**Classification.** (F/C) faithful, or an interpretive convention shared with the
disclosed gold policy (means-folding, one-leaf delegation, purpose-clause dropping,
"should"-as-obligation); (U) unstated assumption beyond the sentence, invisible to the
suite; (H) hallucinated structure that happens to be inert on the suite.

## Result: 14 F/C · 4 U · 2 H  (30% of exact passes carry suite-invisible content)

### U — unstated assumptions (4)

| Item | Assumption |
|---|---|
| waist 681c4394 | **Means-closure**: "adjustable damper or other thermostatically controlled method" encoded as exactly two alternative means; a third (non-damper, non-thermostatic-labelled) adjustment method would fail where the sentence is arguably open. |
| waist cand65 | **Evidentiary grounds folded**: the exception requires agreement "on the grounds that the circulation route is unobstructed"; the encoding exempts on *any* agreement (`greater_distance_agreed`), dropping the grounds condition. |
| lrml 0aaf71f0 | **Missing-data semantics flipped** (see below). |
| lrml 9ff8b8fd | **Missing-data semantics flipped** (see below). |

**The LRML pattern is systematic, not incidental.** The bracket IR's single-consequent
mould forces conjunctive obligations into one `obligation_met` definition consumed by
negation-as-failure. Where the gold writes one violation rule *per measured property*
(convicting only when the property is present and out of bounds), the translated form
convicts whenever *any* property fact is absent: a case with no measured
`fabric_energy_efficiency_rate` is a violation under the translation and a
non-conviction under the gold. Every suite supplies all measurements, so the
divergence is invisible to behavioral scoring — yet it flips the burden-of-proof
semantics on incomplete data. This strengthens the paper's argument from a new angle:
even where the broad target *passes*, its mould has silently rewritten what the norm
does on unseen cases.

### H — inert hallucinations (2)

| Item | Structure |
|---|---|
| waist d3c5b819 | A full parallel norm branch for **manholes** — never mentioned in the sentence; inert because no suite case contains a manhole. |
| waist 6187cad8 | A **dead defeat rule**: the "may have boost controls" permission is encoded as an exemption whose body contradicts the violation it defeats (`operates_without_intervention` vs its negation), so it can never fire. Logically inert; a maintenance hazard. |

### F/C — faithful or convention-shared (14)

The remaining 14 make only the interpretive moves the gold's disclosed policy makes:
existential side-reading (0085ecdd), survey-aggregate folding (cand40), delegation to
open-texture leaves (9a574829, aaca648c, 08efb7a8, df09194e ×2, f009a781, 23db27ac),
conjunctive decomposition of "in such a way that" (0edb92b7), note-as-norm (82aa0792),
per-floor universal (14d1a086), strict-exceeds boundary (cand40), direct comparisons
(9ff8b8fd waist).

## Takeaways for the paper

1. Behavioral exactness is necessary, not sufficient: ~30% of exact passes carry
   suite-invisible semantic content, confirming that execution-match must be read
   alongside an assumption audit (as the method section promises).
2. The waist's suite-invisible residue is *local* (a closed enumeration, a folded
   ground, an inert extra branch) and reviewable; the LRML residue includes a
   *global* semantics flip (missing-data burden of proof) induced by the target's
   mould — the target-language effect again, now visible even among its passes.
3. Auditor = the gold's author (disclosed limitation; sample and classifications
   released for review; KT review invited as with the gold acceptance gate).
