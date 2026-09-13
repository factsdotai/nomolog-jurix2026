# E2 corpus decision & task list (closes Issue #2 · decision D-8, ratified 2026-08-04)

**Decision.** E2 (LLM→waist compilation) runs on **building regulations via CODE-ACCORD**;
E3 stays **US tax §121 vs Catala** (depth case study). Behavioral execution-match scoring is
the paper's methodological contribution; the full waist-width ablation is deferred to the
long paper (at most a two-width slice here if space allows).

## Corpus: CODE-ACCORD

- Hettiarachchi et al., *Scientific Data* 2025 (arXiv:2403.02231). 862 self-contained
  sentences from the building regulations of England and Finland (English translations);
  4,297 entities + 4,329 relations, 12 annotators; EU Horizon ACCORD project.
- **License: CC BY 4.0** — sampling, adaptation, and redistribution of our gold layer on
  top is cleared, with attribution.
- Distribution: GitHub `Accord-Project/CODE-ACCORD` (includes original regulation PDFs and
  pre-processed text), HuggingFace datasets, Zenodo v1.0.0 archive.
- Note: annotations are **entities/relations, not formal rules** — gold waist encodings are
  ours to author. The entity categories seed the **building-regs profile** (predicate
  signatures derived from their scheme rather than invented).

## Design: two slices

1. **Comparability slice** (~50–80 sentences sampled from the 862): the head-to-head.
2. **Exception-rich slice**: the self-containment filter strips cross-sentence exception
   structure ("except as provided in …") — exactly P2 territory. Sample multi-clause
   passages from the full source texts in the repo; this slice is where the defeasible
   target argues for itself. Report both slices separately.

## Baseline arm

- Fuchs et al. 2024 (arXiv:2407.21060): GPT few-shot → LegalRuleML, F1 ≈ 70% on NZ
  Building Code data (from Dimyadi et al. 2020, LRML compacted to bracket form). Public
  release of that data **unconfirmed** → we do not depend on it: we **re-run their
  protocol** (same few-shot budget, LegalRuleML target) on the CODE-ACCORD slices,
  alongside the identical sentences into the waist. Same source text, two targets — the
  clean H4 design. Their published number remains a reference point, not a table row.
- Email Fuchs/Amor (Auckland) for the NZBC data anyway: possible robustness column, and
  the natural first D-7 outreach touch.

## Scoring

- Primary: **behavioral execution-match** — per-sentence compliance case suites; two
  encodings equivalent iff they decide the same cases. Report structure-F1 alongside for
  comparability with prior work; the divergence between the two metrics is itself a result.
- Unstated-assumption audit on a re-annotated subsample (the ContractNLI-SMT lesson).
- Contamination: regulations + baseline paper are in pretraining corpora; include
  perturbed/renumbered variants of the sampled sentences as a control.

## For the long paper (not this one)

- **BRISE-Plandok** (Recski et al., LREV 2024): 250 docs / 7,000+ sentences, Vienna zoning
  map, manual **formal-rule** annotations, German. Zoning = A4's domain with richer
  exception/variance structure — the obvious third frontend for the N≥3 claim.

## Task checklist

- [x] Clone CODE-ACCORD; verify HuggingFace load; record dataset version/commit.
      *(CODE-ACCORD @ 45f0830; see `data/sample_e2.py`.)*
- [x] Sample comparability slice (~50–80) + exception-rich slice; freeze sentence IDs.
      *(Frozen 2026-08-04, seed 20260804: 60-sentence comparability slice +
      80 exception candidates in `data/`.)*
- [x] Freeze the E2 waist fragment (Boolean reading of the c2-toy feature set, no
      semiring machinery needed for the short paper) + derive the profile from entity
      categories. *(Frozen 2026-08-05: `waist-fragment.md` v1; reference evaluator in
      `harness/waist_eval.py`.)*
- [x] Author gold waist encodings + case suites for both slices; log authoring time
      (it's data for the paper's cost argument).
      *(DONE 2026-08-05. Comparability: 51 gold + 9 strata (`gold/TRIAGE.md`), 248/248.
      Exception: 20/20 with defeat machinery, 115/115 (`gold-exception/README.md` —
      guards-vs-defeats line, scope-defeat, rebuttable default, S5 finding).
      All session-authored, machine-verified only — human review + rerun is the
      acceptance gate; times not human-comparable (`gold/authoring-log.csv`).)*
- [ ] Implement both few-shot pipelines (LegalRuleML target; waist target with
      grammar-constrained decoding); fixed exemplar budget matching Fuchs et al.
- [x] Perturbed-variant control set. *(DONE 2026-08-05: `data/e2_perturbed.csv`, 80
      variants via deterministic semantics-preserving transforms (modal / comparison
      / connective / unit re-expression), 5 sentences untransformed and listed.)*
- [ ] Email Fuchs/Amor re: NZBC→LRML data (+ D-7 first touch).
- [ ] Abstract draft by **Aug 24** (buffer before the Aug 28 recommended date).
