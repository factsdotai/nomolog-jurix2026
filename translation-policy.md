# Charitable-translation policy — v1, FROZEN before any scored run (D-9 rider i)

Governs `harness/bracket2waist.py`, the deterministic translator from the LRML bracket
IR (`lrml-target.md`) into the waist fragment for behavioral scoring. Every discretionary
choice below resolves **in the LRML arm's favor**; the translator implements exactly
these rules and nothing else. Changes only by version bump + ROADMAP decision-log entry
*before* runs; after the first scored run this file is immutable for Paper 1.

## 1. Principles

- **P1 (charity).** Where the IR underdetermines the waist encoding, choose the reading
  that maximizes the LRML arm's chance of matching the gold verdicts.
- **P2 (determinism).** Same IR in, same program out. No heuristics conditioned on the
  gold encoding; the translator never sees `encoding.lp`. It may see the case-suite
  fact schema only through the *prompt* (both arms receive it identically) — the
  translator itself is schema-blind.
- **P3 (totality).** Every well-formed IR translates. Failure modes upstream of the
  translator (no `if(`, unbalanced brackets) are model failures; there is no
  "translator couldn't handle it" category, by construction.
- **P4 (honest gaps).** Constructs whose waist rendering is *semantically* undecidable
  from the IR alone (permissions without a stated ceiling) get the fixed rendering
  below, and the paper reports them as a stratum: the asymmetry between what LRML
  states and what can be executed is a finding, not noise.

## 2. Normalization (all charitable)

- **N1.** Names: camelCase split, lowercased, non-alphanumerics to `_`
  (`greaterThanEqual` ≡ `greater than equal` → `greater_than_equal`).
- **N2.** Units normalized per `waist-fragment.md` §3 before comparison (40 mm → 40;
  4 m → 4000; 20% → 0.2; 1:20 → 0.05; °/deg/°C stripped; already-canonical units
  stripped). Unknown units: bare number passes through + `% unit-unverified` comment.
- **N3.** Comparison synonyms all map to waist operators: {greater than equal, at
  least, min} → `>=`; {less than equal, at most, max, not exceed} → `<=`;
  {greater than, exceed, more than} → `>`; {less than} → `<`; equal → `=`;
  not equal → `!=`. `not( <cmp> )` maps to the complement operator.
- **N4.** Document references (`nzbc g12as1 6.8`, `table 2.1`) become constants.

## 3. Construct mapping (T-rules)

Variables: one waist variable per distinct normalized entity phrase, shared across the
whole statement (charitable co-reference: "the drain" in condition and consequent is
the same drain).

- **T1** `exist(e)` → sort atom `e(Ve)`.
- **T2** `e. attr` → `attr(Ve, Vattr)`, yielding term `Vattr`. The sort atom
  `e(Ve)` is added only when `e` is *independently asserted* somewhere in the
  statement (via `exist`/`is`/`has`/spatial relations/bare boolean use) —
  case suites assert sorts for first-class entities but not for attribute
  carriers introduced en passant ("side. free space"), and requiring an
  unasserted sort would fail the arm on a naming technicality (P1).
- **T3** `is(x, v)`: attr `x` + scalar `v` → `attr(Ve, v)` (direct value binding);
  entity `x` + word `v` → classification `v(Vx)`. `is(x, or(a, b))` splits (T7).
- **T4** `has(a, b)` → `has(Va, Vb)` + sort atoms for both.
- **T5** comparisons → waist comparison over the translated numeric term (N2, N3).
- **T6** `as per` / `comply with` / `within` / `include` / `part of` / any non-core
  fname → binary/n-ary atom under its normalized name (`comply_with(Vx, ref)`);
  open-textured leaves by design, extension supplied by case facts.
- **T7** `or` in the condition → one `applies` rule per disjunct; in an obligation
  consequent → one satisfaction rule per disjunct (any disjunct discharges); under
  prohibition → one violation rule per disjunct. `and` → conjunction in place.
- **T8** `not(φ)` in a consequent: `obligation(not(φ))` ≡ `prohibition(φ)` (and
  dually). In a condition: negation-as-failure over the translated atom (helper rule
  for complex φ).
- **T9** `loop` / `for each` are transparent: waist rules are implicitly universal;
  the wrapper contributes its entity's sort atom and recurses.
- **T10** Deontics:
  - `obligation(φ)` → `applies :- ψ.` per condition branch; `rN: violation <= ψ,
    not <sat>.` with strict rules `<sat> :- φ.` per consequent branch; `<sat>` is
    parameterized by entity variables shared between ψ and φ (matching the gold
    idiom `side_ok(T)`).
  - `prohibition(φ)` → `applies :- ψ.`; `rN: violation <= ψ, φ.` per branch pair.
  - `permission(φ)` → `applies :- ψ.` and **no violation rule** (P4: a bare
    permission licenses; absent a stated ceiling the charitable reading never
    convicts). Reported as the `permission` stratum.
- **T11** The `applies`/`violation` guard invariant (`waist-fragment.md` §5) is
  enforced by construction: every violation rule's body includes the applicability
  atoms of its branch.

## 4. What charity does *not* cover

Predicate naming. The model is told the case-suite vocabulary in the prompt (both arms,
identical block); choosing to use it is the model's task. The translator performs N1
normalization only — it never fuzzy-matches an off-schema name onto the schema, because
that would grade the translator's lexicon, not the model's compilation (and Fuchs et
al.'s own error analysis, Listings 6–7, treats vocabulary misalignment as model error).

## 5. Audit trail

The translator stamps every emitted program with a header comment: policy version, IR
input hash, and any `% unit-unverified` / `% permission:` markers. Emitted programs are
stored per run under `harness/runs/<run>/out/` — the re-annotation sample for the
unstated-assumption audit draws from these files.

---

## Erratum & robustness addendum (2026-08-10, post-adversarial-review)

Adversarial review of the scored runs found that **T1 is not charitable** on the
exception slice, contradicting T2's own rationale: `exist(e)`'s sort atom is a
naming obligation that exception-slice case suites do not always assert, so
semantically near-correct IRs fail on a technicality. The frozen v1 policy remains
the **pre-registered primary scoring** (unchanged, per the freeze discipline), and
the paper now additionally reports an **exist-transparent ablation**
(`B2W_EXIST_TRANSPARENT=1`, implemented flag-gated in `bracket2waist.py`): entity-sort
atoms are dropped wherever their variable is bound by another literal of the same
branch. The ablation is a Pareto improvement for the LRML-IR arm (exception case
accuracy 33%→54%, comparability exact 37%→43% under Opus 5) and is adopted as that
arm's reported upper bound. Root cause recorded as a validity note: gold case suites
assert sort facts inconsistently between the comparability and exception slices.

**Sat-head conformance fix (same review, second finding).** The T10 implementation
computed `obligation_met`'s parameters as the intersection of entities engaged by
*every* consequent branch, so a disjunct omitting the entity collapsed a per-object
obligation into a global one (one door's compliance discharged all doors). The frozen
policy text — "parameterized by entity variables shared between ψ and φ" — reads on
the consequent as a whole; the implementation now takes the union over consequent
branches (∩ condition branches ∩ ∪ consequent branches), binds non-engaging branches
via the entity's sort atom, and drops an entity only when some branch cannot bind it
safely (P3). This is a bug fix toward the frozen text, not a policy change. Rescoring
every stored program under the fixed translator changes exactly one scored cell of
the **frozen-primary** numbers: Haiku exception *perturbed* case accuracy +1
(cand21, 0→6 → 1→6); all original-variant primary numbers and exact-suite counts
are unchanged.

**Correction (2026-08-11, review 2 M5).** An earlier version of this paragraph
claimed all robustness *macros* were also unchanged except `\TaughtAblVAcc`. That
was wrong: the sat-head fix interacts with the exist-transparent ablation flag
(binding sort atoms vanish under ablation, changing sat heads), and a later fix
to a substring-matching bug in the ablation's redundancy test (D6) moved ablation
macros again. Numbers no longer live in this file: `draft/generated-robustness.tex`,
regenerated by `harness/rescore.py` (which also regenerates `runs/RESCORE.md`
verbatim), is the single authoritative artifact for every re-analysis figure.

## Translator v1.1 addendum (2026-08-11, review 2 M2/Q5)

`bracket2waist_v11.py` is the **corrected upper bound** for the LRML-IR arm,
absorbing the full second-review defect ledger: F1 condition atoms conjoined into
satisfaction rules per condition branch (kills spurious self-joins); F2 ablation
extended into negation-scope helpers; F3 bare all-alpha entity operands under
domain predicates become registered variables (digit-bearing operands remain
constants: document references); F4 negation helpers parameterized by inner
entity variables, with a terminal safety-repair pass; F5 `is()`-const sort atoms
registered for ablation; F6 token-boundary matching in the redundancy test (fixed
in `bracket2waist.py`, flag-gated path only); F7 v1.1 validates its own output
(safety + stratification) and raises on failure — a translator bug by P3, never a
model failure. Frozen v1 remains the pre-registered primary. Reporting is by
per-suite delta with a **regression column** (`runs/v11-delta.csv`): v1.1 may
lawfully score *below* v1 where a tightened join removes an accidental pass
(observed: one suite, cand75). Verified against the reviewer's constructions:
cand01 6/6, cand02 4/6→6/6, cand31 4/5→5/5.

**D8 disclosure (not a defect).** T10's satisfaction parameterization silently
chooses between existential and universal readings of obligations over
attribute-bearing entities (the "one side suffices" pattern). No schema-blind
policy resolves this per sentence; neither option dominates across the gold. It
is the standing exhibit of why translator charity cannot be total, and the first
challenge in `harness/challenge/`.
