# LRML-IR encodings written by hand

These support the paper's claim that LRML-IR can express the exception
patterns we tested. They replace an earlier claim, since retracted, that
such patterns were out of reach.

Each file is a single statement under the frozen `lrml-target.md`
grammar, scored by the frozen original rewriter. Run `python3
verify.py`.

| passage | where the exception goes | original rewriter |
|---|---|---|
| cand01, a scope withdrawal with three exceptions | in the consequent | **6/6, exact** |
| cand02, a capacity floor with a demonstrated-appropriate exception | in the consequent | 4/6 |
| cand31, fire-resisting construction near a stair, with an alternative-routes exception that cancels the provision | in the condition, the elements quantified in the consequent | 4/5 |

cand01 gets right all three of the cases that its exception covers, so
the format can say that the provision covers a case and that the case
meets it. The two shortfalls are defects of the original rewriter, not
limits of the grammar, and both encodings score exactly under the second
rewriter. The paper reports that per suite.

Encodings using the override construct are in `../mock_ir_v2/`, where
cand01, cand02, and cand08 all score exactly.
