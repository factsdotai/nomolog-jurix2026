# Nomolog: artifact for "Does the Target Language Matter?" (JURIX 2026)

Research artifact for:

> K. Tsioutsiouliklis. *Does the Target Language Matter? LLM Compilation of
> Building Regulations into a Defeasible Rule Language.* JURIX 2026
> (submitted).

Every number in the paper regenerates from this repository without
calling a model. It holds the reference encodings and their case suites,
the evaluator, the rewriters, the 21 runs with their per-sentence
results and raw model outputs, the prediction files, and the re-scoring
scripts. There are three rewriters, the original, the second one with
the seven defects fixed, and one that accepts the override construct.

## What is on request

This repository leaves out the runner that calls the model APIs, the
model client, the worked examples that the prompts are built from, and
the cache of prompts and replies, which contains those examples. We
share them with researchers on request, under a research-use agreement,
at kostas@facts.ai. They are needed only to generate fresh model
outputs, not to check or re-score the results in the paper.

## What is Nomolog

Nomolog (Greek *nomos*, law, plus the *-log* of Prolog and Datalog) is
the small defeasible rule language that the paper evaluates as a
compilation target. It is function-free Datalog, plain facts and strict
rules `head :- body.`, plus four additions: defeasible rules (`rN: head
<= body.`) whose conclusions hold unless something defeats them,
explicit priority (`r2 > r1.`, rule 2 beats rule 1), conflict
declarations (`#conflict a, b.`), and numeric comparisons over numbers
converted to standard units.

That is the whole language. It cannot count, sum, or aggregate, cannot
do arithmetic beyond multiplying by a constant, and has no notion of
time. Every encoding decides two reserved answers, `applies` and
`violation`, and is scored by what it decides on a suite of cases that
the evaluator checks.

Here is the reference encoding of one exception passage, cand37 in
`gold-exception/`: *"the deflection may be assumed to be 40mm unless a
smaller value can be justified by assessment"*.

    applies :- compartment_wall_mid_span(W).
    r1: assumed_deflection_default <= compartment_wall_mid_span(W).
    r2: assessed_deflection_applies <= compartment_wall_mid_span(W),
                                       justified_deflection_value(W, V).
    #conflict assumed_deflection_default, assessed_deflection_applies.
    r2 > r1.
    violation :- compartment_wall_mid_span(W), assumed_deflection_default,
                 deflection_allowance(W, A), A < 40.
    violation :- compartment_wall_mid_span(W), assessed_deflection_applies,
                 justified_deflection_value(W, V), deflection_allowance(W, A), A < V.

Where to look:

- **Definition:** [`nomolog-spec.md`](nomolog-spec.md), the grammar,
  safety condition, and semantics. It was frozen on 2026-08-05 under the
  internal codename "waist" and renamed for publication, so the code and
  the older documents still say "waist". We kept those names so that the
  scripts and the history keep working. For the same reason the scripts,
  the frozen policies, and the prediction files say "translator" for
  what the paper calls a rewriter.
- **Reference evaluator, the executable semantics:**
  `harness/waist_eval.py`.
- **Worked programs:** `gold/*/encoding.lp`, 51 sentences, and
  `gold-exception/*/encoding.lp`, 20 passages. Each directory also holds
  the sentence, its origin note, and its case suite.

## One-command checks

    python3 harness/waist_eval.py check-all gold            # 247/247 cases
    python3 harness/waist_eval.py check-all gold-exception  # 114/114
    python3 harness/waist_eval.py check-all e3-121          # an extra check, Catala's §121 example, not in the paper
    python3 harness/rescore_results.py   # re-score every stored program against the current suites
    python3 harness/gen_tex.py           # regenerate every table number from results.csv
    python3 harness/rescore.py           # every re-scoring in the paper's Section 5, from stored outputs
    python3 harness/audit_vocab.py       # the invented-predicate counts in Section 5, from stored outputs
    python3 harness/audit_runtime_rejects.py   # the runtime rejects in Section 4, from stored outputs
    python3 harness/test_v2.py           # rewriter tests
    python3 harness/handauthored-ir/verify.py   # the hand-written LRML-IR encodings
    cd harness/challenge && python3 score_translator.py <rewriter.py>

The last line scores a different rewriter of LRML-IR against ours, so
that the rewriting can be checked and improved.

## Layout

- `nomolog-spec.md` (formerly `waist-fragment.md`), `lrml-target*.md`,
  and `translation-policy*.md` are the frozen definitions and policies.
- `gold/`, `gold-exception/`, and `e3-121/` hold the reference encodings
  and their case suites. We kept the usual name "gold" for these
  directories.
- `harness/` holds the evaluator, the three rewriters, and the scripts
  that re-score and analyse the runs.
- `harness/runs/` holds the 21 runs, one per model, language, and
  prompt, counting the balanced-examples run that we made on Opus only.
  The `*-PREDICTIONS.md` files hold the predictions we committed before
  each run, and each file records the time between its commit and the
  run. The predictions for the override construct are at the end of
  `translation-policy-v2.md`, not in a file of their own.
  `runtime-rejects-audit.md` lists the programs that the evaluator
  rejected at run time, and `vocab-audit.md` counts the programs that
  use a predicate that no case supplies.
- `harness/challenge/` scores a different rewriter against ours.
- `exception-slice-protocol.md` records how we selected and rebuilt the
  exception passages.

## Data sources and licences

The sentences come from CODE-ACCORD (Hettiarachchi et al., *Scientific
Data* 12:170, 2025, CC BY 4.0), and each one carries a note stating its
origin. The code is under the MIT licence, and the reference encodings,
case suites, and documents are under CC BY 4.0, as the LICENSE file
states.

Facts.ai maintains this repository.

## The advance commitments

Each prediction file records the commit that froze it and how long after
that commit the run took place. We have no external timestamps. This
repository is published as a single commit, so its own history cannot
show that order. The private repository that it was exported from does,
and we show it to reviewers on request. In that history each commitment
precedes the commit that reports its outcome. The four commitments:

| commitment | commit cited in the file | author date |
|---|---|---|
| override construct | 9f6e95e | 2026-08-10 19:11 -0700 |
| scoring explained | 816da97 | 2026-08-11 10:04 -0700 |
| the OpenAI models | 0b563c1 | 2026-08-11 10:42 -0700 |
| explanation without the example | 253bef9 | 2026-08-11 12:35 -0700 |

## AI-use disclosure

Anthropic's Claude, under the author's direction, drafted the reference
encodings, the evaluator, and the rewriters, and helped the author write
the paper. In separate conversations it also wrote the two adversarial
reviews that Section 4 of the paper describes. The commits that record
this carry co-authorship trailers in the private repository, which the
export strips, so this note is the disclosure. The evaluator checked
every reference encoding and the author read each one. The author
verified every claim and number and takes responsibility for everything
here.
