# How the exception passages were selected

We disclose this because the same person curated the passages and
designed the winning language. Every fact below is checkable from the
released files.

**Population.** The CODE-ACCORD *raw-text stage* documents (commit 45f0830):
the full UK Approved Documents source texts (B vol. 1/2, F, K, L, M vol. 1/2,
R, S). The published corpus of self-contained sentences was not the
population, because its self-containment filter strips exactly the
cross-sentence exception structure we set out to test. See
e2-corpus-notes.md.

**Search criterion.** Passages with an exception marker ("except",
"unless", "does not apply", "other than", "in which case") attached to
a checkable obligation or prohibition.

**Selection targets.** Three. Pattern diversity: each passage carries a
pattern tag in its provenance line, and 20 passages carry 18 distinct
tags. Document diversity: 9 source documents. And the obligation had to
be renderable as a decidable case suite, the same filter we applied to
the single sentences, applied before any encoding was written.

**Reconstruction.** Fragmented raw-text lines were rejoined into readable
passages; where reconstruction was non-trivial the original marker line is
quoted verbatim in sentence.txt. Every sentence carries
`provenance: CODE-ACCORD 45f0830 raw-text stage · <document>:<line> ·
pattern: <tag>`.

**Freeze.** Slice frozen 2026-08-04 together with the comparability sample
(seed 20260804) before any prompt, exemplar, or encoding work.

**Known limitation.** One person selected and annotated these, which
the paper discloses. The checks available to a reader are the
mechanical re-scoring under both uniform readings in
`harness/rescore.py`, and the provenance lines.
