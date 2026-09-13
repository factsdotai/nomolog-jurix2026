# LRML-IR+override arm target: bracket IR v2 — Experiment 2 (expressiveness ladder)

**Status: FROZEN on commit.** Freeze discipline as for `lrml-target.md`: this file and
`translation-policy-v2.md` are committed, with pre-registered predictions, *before any
scored v2 run*; thereafter immutable for Paper 1. Experiment 1 (v1 arms) is unaffected:
its grammar, translator behavior, exemplars, and scored results remain the frozen
primary. The v2 arm is an additional column, scored under identical discipline.

## 1. Provenance — and what this arm is *not*

The v1 bracket IR is the compacted LegalRuleML intermediate representation that the
autoformalization line actually targets (Fuchs et al. 2023). **The v2 grammar is our
own minimal extension of it**: it adds a compaction of the one construct family that
full OASIS LegalRuleML has and the attested IR does not carry — `<Override>` with
defeasible rule strength. No published pipeline emits this form; the arm is a
*construct ablation*, designed to isolate whether the exception-slice gap is caused by
the single-rule mould (foreclosing exceptions by construction) or by something the
narrow target provides beyond defeasibility. The paper must present it as such, and
name the arm **LRML-IR+override**, never "LegalRuleML."

Design rule: the extension is *minimal* — exactly two additions, nothing else changes.
The minimality is what makes the ablation clean; resist all enrichment.

## 2. Grammar v2

Everything from `lrml-target.md` §2 is unchanged, except that a target is now a
*program* of one or more statements, statements may carry labels, and one new
statement form exists:

```
program   ::= statement+
statement ::= [label ":"] "if(" expr ")" "," "then(" deontic ")"
            | "override(" label "," label ")"
label     ::= letter (letter | digit | "_")*        e.g.  r1, base, exception_a
```

- `override(rE, rB)` asserts that statement `rE` prevails over statement `rB` where
  both conditions hold — the compaction of LegalRuleML `<Override>` (over = `rE`,
  under = `rB`).
- Whitespace/newlines between statements are insignificant; statements are
  self-delimiting (balanced parentheses). A trailing `.` after a statement is
  stripped. Labels are normalized by N1.
- A statement without a label gets the auto-label `s1`, `s2`, … in textual order
  (referable, though exemplars always label explicitly).
- **Extraction change:** v1 extracted the first `if(`-span of the response; v2
  extracts *all* statements (every `label:`/`if(`/`override(` span) after stripping
  code fences and a leading `IR:`/`Target:` marker. A v1-style single statement is a
  valid v2 program; v2 is a strict superset.

Validity metrics gain: `n_statements`, `n_overrides`, `dangling_override_count`
(overrides naming a label with no statement).

## 3. Translation

Deterministic mapping in `translation-policy-v2.md` (T12–T14). Summary: labeled
statements translate exactly as v1 (shared entity scope across the program —
charitable co-reference extends statement-level to program-level); `override(rE, rB)`
compiles to the waist defeat idiom the gold itself uses:

```
rM: exempt_<rE> <= <condition branch of rE>.     (one rM per condition branch)
#conflict violation, exempt_<rE>.
rM > rN.            (for every violation rule rN of rB)
```

(IR statement labels are surface names; the translator assigns waist rule ids
`r1, r2, …` globally, as the frozen fragment requires — T13.)

with `applies` drawn from the conditions of *non-overriding* statements only — an
exemption narrows liability, not applicability. This makes the gold verdict pair
(applies, ¬violation) attainable for exempt cases **at the level of the arm**, which
the v1 mould forecloses by construction.

## 4. Prompt protocol

Identical to v1 (`lrml-target.md` §4): Source/Target pairs, k = 30, most-similar-last,
temperature 0, same contextualisation block, same term lists. Exemplar set
`harness/exemplars-v2/`: the 30 v1 sentences with the same drop-3/add-3 substitution
as the taught-ablation set (tx1–tx3 exception-flavored sentences), all IR targets
re-rendered in v2 form where the sentence's gold encoding uses defeat — labeled
base + exception statements + `override`. Sentences whose gold uses body guards
(quantifier carve-outs) keep single-statement renderings: teaching *when not to*
use override is part of the construct, and the guards-vs-defeats choice is scored.

## 5. Runs

`e2-opus5-lrml-v2` and `e2-haiku-lrml-v2`: 71 sentences × original + perturbed,
both models, same harness (`run_e2.py`), same caching, same evaluator. Old arms are
not rerun; the 2 models × 3 arms table rescores v1 arms from stored outputs.
