# E2 comparability-slice triage (60 sentences, frozen sample @ seed 20260804)

Status per sentence: **gold** (encoded + case suite, passing `harness/waist_eval.py`) or an
**out-of-fragment stratum** (per waist-fragment.md §6 — recorded as error-analysis data, the
fragment is never quietly widened). 51 gold / 9 out-of-fragment.

## Out-of-fragment strata (9)

| ID | Stratum | Why |
|---|---|---|
| 382038df | aggregation | "at least 30% of the ties" — percentage over an unbounded set |
| 6a41a473 | aggregation | "one in every five remaining parking spaces" — ratio over a set |
| b8365796 | aggregation | "at least 90% of the annual energy consumption … assigned" |
| 0a7ff0c7 | condition-fragment | "The floor area of the extension does not exceed 30m2" — declarative criterion from an exemption list, not a norm; violation convention inapplicable |
| 12907c6f | condition-fragment | "Both: the area of rooflights exceeds 20 [%] …" — trigger condition of an unstated rule |
| 2f75848b | anaphora | "these should be automated" — referent outside the sentence (self-containment filter artifact) |
| 38322c6e | definitional | "should be taken as meaning" — definition needing surrounding context |
| 4e8c5c50 | non-normative | "the only practical heating technology may be…" — descriptive commentary |
| a15ee053 | evidentiary-permission | permission about compliance *evidence* on relocation; meta-regulatory + temporal |

Aggregation is exactly the Q6 exclusion; the two condition-fragments and the anaphora case
are data about the corpus's self-containment protocol, not about the target language.

## Interpretive notes on encoded sentences (flag for human review)

- **6414854d** (ladder ≤ 6m): encoded via the contrapositive (features required above 6m);
  the sentence literally states only the exemption.
- **80221d2c** (≤ 2 drainage wells): bounded counting encoded with distinct variables —
  in-fragment, unlike unbounded percentage aggregation; worth a paper footnote.
- **0aaf71f0, cc72106e** (Finnish fire areas; crawl-space "on average"): totals/averages
  folded into measured properties — the survey aggregates, the norm compares.
- **a1f91cfd** (average target rates "may"): permission encoded as its dual obligation
  (rates exist in one of the two permitted forms), per spec §6.
- **0a7ff0c7 vs 6414854d**: the criterion sentence was strata'd while the exemption
  sentence was encoded — the line drawn: an exemption presupposes a norm to exempt from;
  a bare criterion presupposes only an unstated consequence.
- Purpose clauses ("to allow …", "so that energy savings are maximised" when operative
  content exists) are treated as non-operative preamble; noted per encoding.
- One-leaf encodings (9a574829, df09194e, f51da5c6, …) are legitimate but thin — the
  per-sentence open-texture leaf count is a headline datum (H1); compute leaf density
  before drafting results.

## Gold inventory

All remaining 51 IDs have `gold/<prefix8>/{sentence.txt, encoding.lp, cases.json}`;
`python3 harness/waist_eval.py check-all gold` = 248/248 cases passing as of 2026-08-05.
Case-suite convention: clear-compliant, clear-violation, boundary at every threshold
(≥/> separation), non-applicable, distractor; plus guard/exception cases where the
sentence has them ("unless", "where provided", "in the absence of").
