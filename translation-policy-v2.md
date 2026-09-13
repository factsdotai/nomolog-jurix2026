# Translation policy v2 — LRML-IR+override arm (Experiment 2) — FROZEN on commit

Extends `translation-policy.md` v1 (whose T-rules apply unchanged to every if/then
statement) to programs under `lrml-target-v2.md`. Same principles P1–P4; same freeze
discipline: immutable after the first scored v2 run. The v1 policy file and the v1
translator's behavior on single statements are untouched — v1 results stay the frozen
primary of Experiment 1.

## T-rules added

- **T12 (programs).** A v2 program translates with a single shared entity scope:
  one variable per distinct normalized entity phrase *across all statements*
  (charitable co-reference at program level — "the door" in base and exception
  statements is the same door). Helper and rule numbering are program-global.
  Every if/then statement contributes its T10 machinery per v1, with one change
  (T14c) for statements that override.

- **T13 (labels).** Statement labels normalize by N1 and are *surface* names:
  the waist fragment requires rule identifiers of the form `rN`, so the
  translator assigns global `r1, r2, …` in emission order (as v1) and keeps a
  label → rule-id map for resolving overrides. A statement's exemption head is
  `exempt_<label>` (readable, per-override, avoids cross-talk between unrelated
  exceptions). Auto-labels `s1, s2, …` for unlabeled statements.

- **T14 (override).** For `override(rE, rB)`:
  - **a.** For each condition branch of `rE`: a defeasible rule
    `rM: exempt_<rE> <= <branch>.` (fresh global id `rM`), one
    `#conflict violation, exempt_<rE>.` declaration, and `rM > rN.` for every
    violation rule `rN` of `rB`. This is the gold's own defeat idiom
    (provision-level override = defeat).
  - **b.** Deontics of the overriding statement: `permission` → the exemption is
    its entire contribution (pure carve-out); its consequent is inert
    *throughout*, including the T12 entity prepass — an `exist()` inside it
    creates no sort obligations elsewhere in the program.
    `obligation`/`prohibition` → the exemption plus its own T10 violation
    machinery under its own condition (substitute duty).
  - **c.** The overriding statement's condition contributes **no `applies` rule**:
    an exemption narrows liability, not applicability. `applies` is the union of
    the condition branches of non-overriding statements. (This is the
    attainability fix: exempt cases can now score (applies, ¬violation).)
  - **d.** `override` referencing a label with no statement is stamped
    `% override-dangling: <label>` and skipped (P3 totality: a model failure the
    validity metrics count, never a translator crash). Overrides among statements
    are otherwise applied verbatim, including chains and (ill-advised) cycles —
    the evaluator's defeat semantics decides.

## What charity still does not cover

Predicate naming (v1 §4), and the guards-vs-defeats choice: whether a carve-out is
provision-level (override) or per-object (body guard) is the model's compilation
decision, taught by exemplars, scored behaviorally. S5 predicts propositional defeat
cannot scope per-item exemptions; a model that renders a quantifier carve-out as an
override will fail those suites honestly.

## Audit trail

As v1 §5; the program header additionally stamps `policy v2`, `n_statements`,
`n_overrides`, and any dangling-override notes.

---

## Pre-registered predictions (committed before any scored v2 run)

- **P-v2-1.** Opus 5, exception slice, verdict-pair exact-suite: LRML-IR+override
  scores well above the v1 arm's 0% (attainability restored) but below Nomolog's
  55%. Point prediction: 20–40%.
- **P-v2-2.** Comparability slice: statistically unchanged from the v1 arm (±5
  points) — the added constructs are inert where no exception exists, and nothing
  else moved.
- **P-v2-3.** The residual v2-vs-Nomolog gap concentrates in (i) guards-vs-defeats
  misrendering on quantifier carve-outs (S5), (ii) applies-scope conventions, and
  (iii) schema naming — not in defeasibility per se. Error analysis will tag each
  failed suite with one of these three causes or "other."
- **P-v2-4.** Violation-only metric, Opus 5 exception: gap narrows but does not
  close (Nomolog 95%; v2 arm predicted 75–85%).

Outcome semantics, stated in advance: if P-v2-1 holds, the thesis survives its
strongest objection and the residue isolates what narrowness buys beyond
defeasibility. If instead the v2 arm reaches Nomolog's level, the finding becomes
"one construct — override — carries the gap; the mould, not the model, was the
variable," and the paper reports that as the headline. Both outcomes are reported
against these predictions.
