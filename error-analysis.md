# E2 error analysis (feeds paper §5) — runs of 2026-08-09, original variants

Full per-sentence data: `harness/runs/*/results.csv`; aggregates: `harness/runs/ANALYSIS.md`.
Raw model outputs: `harness/runs/*/out/`.

## Headline recap

Waist beats the LegalRuleML bracket-IR by +25..+55 points exact-suite in every
(model × slice × variant) cell. Exception slice: LRML 0% exact on both models.
Contamination control clean (perturbed within ±10 pts of original, no systematic drop).

## Waist arm, Opus 5: taxonomy of all 19 original-variant failures

Syntax is a solved problem here — 0 parse failures in 284 Opus generations (the
grammar + verifier-retry loop); all residual error is semantic. 14 of 19 failing
sentences lose **exactly one case**, and the taxonomy shows the residue concentrates
in the *interpretive conventions* the gold had to legislate, not in logic:

| Category | n | IDs | Diagnosis |
|---|---|---|---|
| **A. Applicability drawn too narrow** | 9 | 78d904cd, 7db23e3b, 8421f806, 8fec1c4a, f7cfdf57, 2cc3d5b0, cand52, cand56, cand77 | The model folds the obligation's *object* (or a guard) into `applies`, so vacuous-compliance and guard cases flip to not-applicable. The logic of the norm is otherwise identical — the verdict-convention boundary (§5 of the fragment: where applicability ends and the norm begins) is what's missed. |
| **B. Guards-vs-defeats line** | 5 | cand18, cand27, cand31, cand43, cand75 | The model reaches for the defeat idiom uniformly; the gold distinguishes provision-level overrides (defeat) from quantifier carve-outs (body guards) and scope-exclusions (scope-defeat). cand18 is the S5 finding reproduced *by the model*: propositional defeat cannot exempt one material while another violates. |
| **C. Exception scope attachment** | 1 | cand08 | Exemption attached to both bounds of a range; the sentence excuses only the upper ("unless needed at a higher level"). |
| **D. Leaf-relation convention** | 1 | 12e545d1 | Omitted the symmetric-closure helper for the open-texture similarity leaf. |
| **E. Vocabulary/sort invention** | 3 | 80221d2c, 87c9c5f5, cand02 | Invented sort atoms or norm branches absent from the case vocabulary (`sink/1`, `boiler/1`, `generation_system/1`); joins fail or hallucinated rules fire. |

**Implication for the paper:** categories A–C (15/19) are failures to hit *encoding
conventions* — the same interpretive calls the gold's TRIAGE had to legislate — not
failures of expressiveness or logic. This sharpens the target-language thesis: the
waist's verdict conventions and encoding-line policies are part of the interface, and
they are learnable from exemplars (the model reproduces the defeat idiom fluently; it
errs on *when* to use it). Expected headroom: convention-focused exemplars or a
two-line prompt note on the applies/violation boundary.

## LRML arm: why it loses

- **Structure is not the problem**: Opus produced 71/71 well-formed `if/then` IR with
  known deontics (Haiku 70/71). The 137 unknown-function uses are legal domain
  predicates, as the target grammar intends. The arm's syntax pipeline is healthy.
- **Correction (2026-09-05).** The bullet below is the early reading from the
  2026-08-09 runs and is **overturned**; it is kept for the record. Two later
  exercises showed the failure is behavioral, not expressive: (i) the
  hand-authored flat-grammar IRs in `harness/handauthored-ir/` (cand01, cand02,
  cand31; cand01 6/6 exact under the frozen v1 translator, all three exact
  under the corrected v1.1) render "applies, but exempt" inside the one-rule
  if/then form by putting the exception in the consequent; and (ii) the
  override arm (`harness/mock_ir_v2/`, hand IRs cand01/cand02/cand08 all exact;
  `harness/runs/e2-*-lrml-v2/`) gave the models the defeat construct and the
  scores did not move. The paper's §5 ("Why LRML-IR loses", "What adding the
  override construct showed") states the current reading: the tested patterns
  are expressible in LRML-IR (three of twenty sentences hand-verified; the
  other seventeen have not been hand-encoded), and the models do not write
  them. The sentence "a ceiling of the target, not of the model" below is
  therefore wrong as written.
- **[SUPERSEDED, see correction above] The exception slice is an expressiveness failure, not a fluency failure**: 0%
  exact-suite on both models. Failing cases are not only the exception-fires cases —
  `clear_compliant` and `clear_violation` fail on 13/12 of 20 sentences respectively,
  because carve-outs forced into the `if(...)` condition (the only place the IR can
  put them) corrupt the applicability of the *base* norm. The flat if/then form has no
  way to say "applies, but exempt" — exactly the defeasibility gap the waist's
  `#conflict`/superiority constructs exist for. Our own hand-authored charitable-best
  IRs (exemplars) cap at partial suites on such sentences, so this is a ceiling of the
  target, not of the model.
- **Comparability-slice losses** are dominated by multi-clause norms flattened into
  single obligations (per-object quantification lost in translation) and by the same
  applicability-scope issue as waist category A, amplified: `exist(x)` conditions pull
  every mentioned entity into applicability.

## Capability axis (H4 signal)

Haiku-with-waist (71% exact, comparability) outperforms Opus-with-LRML (37%): a weak
model with a narrow target beats a frontier model with a broad one. The waist arm
degrades gracefully with model capability (82→71); the LRML arm degrades to near-floor
(37→24). Haiku additionally emitted unsafe programs (variable-safety violations) that
the pipeline's §1 safety gate catches — 16 runtime rejects in its LRML translations vs
2 in waist.

## Caveats to carry into the paper

- Self-authored gold and conventions (disclosed; mitigated by KT review + behavioral
  scoring + released harness).
- The LRML arm's translator is ours (charitable policy frozen pre-run; policy and
  translator released; the asymmetry — no executable LRML semantics exists — is
  itself evidence for the thesis, per D-9).
- N=1 domain (building regulations) + planned §121 depth case (E3 decision Aug 18).
- Perturbed-variant parity argues against contamination but does not eliminate
  familiarity with regulatory *style*.
