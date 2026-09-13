# Nomolog — language specification (FROZEN v1, 2026-08-05)

> **Packaging note (2026-08-13).** Until 2026-08-13 this file was
> `waist-fragment.md`, titled "E2 waist fragment — FROZEN v1 (2026-08-05)".
> The language was designed and frozen under the internal codename "waist"
> (the narrow waist of an hourglass architecture) and named **Nomolog**
> (Greek *nomos* + the Prolog/Datalog *-log* lineage) on 2026-08-10, after
> the freeze — which is why the harness and the prediction files say
> "waist" throughout. This rename changes nothing below this
> note; the only post-freeze edits to the body are unit-table rows that
> §3 itself licenses ("record the choice here when first used"); the
> private source repository keeps that history. Two reading aids: the executable reference semantics is
> `harness/waist_eval.py`; where §2 below defers to "c2-toy", that names a
> prototype in the private source repository and is provenance, not
> definition — everything normative about Nomolog is this file plus that
> evaluator.

The target language for E2 (Paper 1). This is the **Boolean reading of the c2-toy feature
set** (`prototypes/c2-toy/`) with first-order variables, comparison built-ins, and a concrete
syntax for grammar-constrained decoding. No semiring machinery in the short paper.

**Freeze discipline.** Once gold authoring begins, this file changes only by version bump
(v1 → v2) with a dated note here and a ROADMAP decision-log entry; already-authored gold is
re-validated after any bump. Anything the fragment cannot express is *data* (goes in the
error-analysis strata of the paper), not a reason to quietly widen the fragment.

## 1. Syntax

A program is a sequence of statements:

```
program     ::= statement*
statement   ::= fact | strict | defeasible | superiority | conflict
fact        ::= atom "."
strict      ::= atom ":-" body "."
defeasible  ::= ruleid ":" atom "<=" body "."
superiority ::= ruleid ">" ruleid "."
conflict    ::= "#conflict" atom "," atom "."
body        ::= literal ("," literal)*
literal     ::= atom | "not" atom | comparison
atom        ::= predname | predname "(" term ("," term)* ")"
comparison  ::= numterm cmpop numterm
cmpop       ::= ">=" | "<=" | ">" | "<" | "=" | "!="
numterm     ::= variable | number | number "*" variable
term        ::= variable | constant | number
predname, constant ::= lower_snake_case identifier
variable    ::= Uppercase identifier
number      ::= decimal literal (unit already normalized; see §3)
ruleid      ::= "r" digits (unique per program)
```

Comments: `%` to end of line. No function symbols. **No aggregation** (Q6 is a second
non-monotone construct; excluded here exactly as in c2-toy — sentences that need counting
or summation are recorded as out-of-fragment in error analysis). Scalar multiplication in
`numterm` is the only arithmetic; it exists for ratio requirements ("exceeds 20% of the
area of the roof" → `Ar > 0.2 * A`).

**Safety.** Every variable in a rule head, negative literal, or comparison must occur in a
positive body atom of the same rule. Facts are ground.

## 2. Semantics

Exactly c2-toy's declarative semantics, lifted to ground instantiations:

1. **Grounding.** The domain is the constants appearing in the program + case facts
   (case-suite convention, §5). Ground the rules; comparisons evaluate on numbers.
2. **Defeat.** A ground defeasible rule fires iff its body holds and no *applicable*
   superior conflicting rule defeats it — the **applicability variant** of the S1 knob
   (c2-toy README, finding 2); reinstatement semantics is out of scope for E2.
3. **Evaluation.** Defeat compiles to stratified negation; the stratifiability check
   **rejects** programs with a cycle through a negative edge or through defeat (the K6
   discipline). A rejected program is a *scoring event* (the compiled output fails), never
   a crash.
4. The Boolean reading is the unique stable firing set, per the c2-toy spec engine.

## 3. Units

All magnitudes are normalized at encoding time; numbers in programs are unit-free:

| Dimension | Canonical unit |
|---|---|
| length | mm |
| area | m² |
| ratio / percentage | dimensionless fraction (20% → 0.2) |
| power density | W/m² |
| temperature | °C |
| airflow per person | l/s (litres per second per person) |
| structural load capacity | kN/m² |
| gradient | dimensionless fraction (1:20 → 0.05) |
| energy/emission rates | as published (kWh/m²·yr, kgCO₂/m²·yr); compared, never converted |
| currency | as published (GBP for the UK documents); compared, never converted |
| (anything else) | SI base; record the choice here when first used |

## 4. The building-regs profile

Derived from the CODE-ACCORD annotation scheme (commit `45f0830`): entity categories
*object* (1737), *quality* (1717), *property* (545), *value* (298); relation types
*necessity, selection, part-of/not-part-of, greater/less(-equal), equal, none*.

| CODE-ACCORD category | Waist realization | Example |
|---|---|---|
| object | sort: unary type predicate | `toilet_seat(T)`, `extension(X)` |
| quality | state predicate, unary or binary | `fire_compartmented(A)`, `suitable_for_powering(P, lifting_device)` |
| property | measurable attribute: `pred(Obj, Value)` | `floor_area(X, A)`, `mounting_height(C, H)` |
| value | normalized number (§3) | `800`, `0.2`, `30` |
| part-of | `part_of(X, Y)` | room part of storey |
| necessity relation | a defeasible rule whose violation is the head (§5) | `r1: violation <= …` |
| selection relation | applicability guard in rule bodies + `applies` head | "where provided" |
| comparison relations | comparison built-ins | `D >= 800` |

**Open-textured leaves.** Vague qualities ("close to", "suitable", "adequate") stay as
predicates whose extension is given by case facts — vagueness is pushed to the leaves,
never resolved inside the encoding (the H1 discipline). The audit tag for a leaf the
annotator judged vague is a `% open-texture:` comment on its first use.

**Lexicon discipline.** Predicate names are lower_snake_case English lemmas taken from the
source sentence. The vocabulary is open, but before coining a name, authors grep existing
gold for a synonym and reuse it; the lexicon is whatever `gold/` contains (no separate
lexicon file to drift out of sync).

## 5. Verdict & case-suite convention

Each sentence `s` compiles to a program defining two reserved propositional heads:

- `applies` — the provision's applicability conditions hold in this case;
- `violation` — the provision is violated. Only meaningful when `applies` holds;
  encodings must ensure `violation` is never derivable without `applies`.

The verdict of a case is the pair `(applies, violation)`. **Behavioral equivalence** of two
encodings = identical verdict pairs on every case in the suite. This keeps vacuous
compliance (provision doesn't apply) distinct from satisfied compliance — load-bearing for
the exception slice.

**Case suites.** Per sentence, minimum five cases:

1. clear-compliant, 2. clear-violation, 3. **boundary** (exactly at each threshold —
   separates ≥ from >), 4. non-applicable, 5. distractor (irrelevant extra facts that must
   not change the verdict). Exception-slice sentences add: exception-fires and
   exception-conditions-almost-met cases.

**Gold layout.** `papers/jurix-compilation/gold/<example_id_prefix8>/` containing
`sentence.txt` (verbatim source + provenance line), `encoding.lp` (the gold program),
`cases.json`:

```json
{ "cases": [ { "name": "clear_compliant",
               "facts": ["toilet_seat(ts1).", "side_of(s1, ts1).", "free_space(s1, 850)."],
               "expect": { "applies": true, "violation": false } } ] }
```

Authoring time per sentence is logged in `gold/authoring-log.csv`
(`example_id, minutes, date, author, notes`) — cost data for the paper. Human-authored
entries carry real minutes; session-authored pilots are marked not human-comparable.

**Reference evaluator.** `harness/waist_eval.py` implements §2 exactly (stdlib only);
`python3 harness/waist_eval.py check-all gold` must pass before any gold commit.

## 6. Out of scope for E2 (recorded, not solved)

- Aggregation / counting requirements (Q6) — out-of-fragment stratum in error analysis.
- Temporal/versioning constructs — atemporal waist per pending D-1; cross-temporal
  sentences land in the temporal error stratum.
- Reinstatement defeat semantics (S1 variant B) and semiring readings — Paper 2 territory.
- Obligations vs permissions beyond the violation convention: explicit permissions
  ("may be located…" read as a permission with a ceiling) are encoded as the dual
  violation rule; genuinely deontic-modality-dependent sentences are a stratum.
