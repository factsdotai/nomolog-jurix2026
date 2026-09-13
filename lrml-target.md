# LRML arm target: the compacted bracket IR — v1 (D-9 rider ii)

**Scope discipline.** This file defines the *entire* target grammar for the LegalRuleML
arm. The deterministic translator (`harness/bracket2waist.py`) is total over this
grammar: every well-formed IR string translates. Model output outside this grammar is a
scored model failure (`parse_failure`), never a translator gap — that is what D-9 rider
(ii) requires. Freeze discipline as for `waist-fragment.md`: changes only by version
bump + ROADMAP decision-log entry, before any scored runs.

## 1. Provenance

The target is the **reversible intermediate representation (IR)** of Fuchs et al. 2023
(EPPM 2023; arXiv:2407.21060, §2.1, Listing 1), which compacts LegalRuleML XML into a bracket form
("replacing the XML tags with brackets and removing recoverable information", with
spaces inserted for tokenisation and camel case reverted). Their example:

```
Source:   3.4.2 The floor waste shall have a minimum diameter of 40 mm.
IR:       if( exist( floor waste)), then( obligation( greater than equal( floor waste. diameter, 40 mm)))
```

Further constructs attested in their listings: `is( storage water heater. type,
or( electric, gas))`, `as per( firecell. floor area, nzbc cas2 t2.1)`,
`permission( and( within( access point. location, space), include( space, soil
fixture)))`, `comply with( ventilation pipe, nzbc g12as1 6.8)`, `has( drain, change in
direction)`, `not( exceed( drain. change in direction, 90 deg))`, `loop( for each(
storage water heater ...))`.

## 2. Grammar

```
ir        ::= "if(" expr ")" "," "then(" deontic ")"
deontic   ::= ("obligation" | "permission" | "prohibition") "(" expr ")"
expr      ::= call | operand
call      ::= fname "(" expr ("," expr)* ")"
fname     ::= lowercase word sequence (spaces allowed; camelCase accepted
              and normalized by splitting)
operand   ::= entity | attr | value
entity    ::= lowercase word sequence            e.g.  floor waste
attr      ::= entity "." word sequence           e.g.  floor waste. diameter
value     ::= number [unit] | word sequence | document reference
```

Whitespace is insignificant except as a word separator. A leading `IR:`/`Target:` label
and Markdown code fences are stripped before parsing.

**Core function inventory** (the translator gives each a specific meaning; §3 of
`translation-policy.md` has the mapping):

| Group | Functions |
|---|---|
| logical | `and`, `or`, `not` |
| state | `exist`, `is`, `has` |
| comparison | `greater than equal`, `less than equal`, `greater than`, `less than`, `equal`, `not equal`, `exceed`, `at least`, `at most`, `min`, `max` |
| reference | `as per`, `comply with` |
| spatial/mereological | `within`, `include`, `part of` |
| quantification | `loop`, `for each` |

Any *other* `fname` is treated as a domain predicate atom over its translated arguments
(the model naming a relation directly is legal — the CODE-ACCORD schema terms are in
the prompt). This keeps the grammar open exactly where Fuchs's vocabulary was open,
while every construct still has a deterministic translation.

## 3. Units

Values with units are normalized by the translator per `waist-fragment.md` §3 (mm, m²,
dimensionless fractions, etc.). Attested unit spellings (`mm`, `cm`, `m`, `m2`, `%`,
`deg`, `°`, `l/s`, `kwh/m2yr`, …) are in `bracket2waist.py:UNIT_TABLE`; an unrecognized
unit passes the bare number through and stamps a `% unit-unverified` comment in the
emitted program (auditable, not silently dropped).

## 4. Prompt protocol (matched to Fuchs et al.)

- `Source:` / `Target:` exemplar pairs, new sentence as final `Source:`, ending with
  `Target:` (their Listing 2).
- Exemplar budget k matched across both arms; their best configuration used ~30
  exemplars with most-similar-last ordering — k is a Phase-0 KT decision.
- Temperature 0; all content in the user role (their §3 findings).
- Extraction requires `if(` in the response; on failure, regenerate with increasing
  temperature (their protocol; steps of +0.2, max 3 attempts).
- Contextualisation: a short task introduction plus the per-sentence term list (the
  case-suite fact schema). Sanctioned by their §2.2.2 ("a list of the most common
  terms … the range of available predicates") and given to *both* arms identically.

## 5. Validity metrics reported alongside behavioral scores

Per D-9: `parses` (IR well-formed per §2), `if_then_wellformed`, `known_deontic`,
`unknown_function_count` (uses of non-core fnames), `translated` (always true for
well-formed IR, by construction). Fuchs et al.'s published F1 ≈ 70% remains a
reference point in prose, never a table row (different corpus, different metric).
