# Score another rewriter against ours

The paper reports the best LRML-IR score that we found under adversarial
review, not a proven maximum. This directory scores a different rewriter
in one command, so that anyone with a better one can compare it with
ours.

A candidate rewriter is a Python module with a function
`translate(ir_text: str) -> str` that returns the text of a Nomolog
program. That is the function `score_translator.py` calls, and both of
our rewriters have it, the frozen original (`bracket2waist.py`) and the
second one with the seven defects fixed (`bracket2waist_v11.py`). The
third rewriter, `bracket2waist_v2.py`, reads the grammar with the
override construct and has `translate_program(text)` instead, so this
check leaves it out and covers the frozen grammar only.

A candidate has to meet three conditions, which we check by reading the
code. It gives the same output for the same input. It does not read the
reference encodings or the case facts, and it sees the predicates only
the way both languages do, through the prompt. And it accepts every
program in the frozen grammar of `lrml-target.md`.

    python3 score_translator.py my_rewriter.py

That scores every stored model output with the candidate, next to our
two sets of numbers, and gives the difference for each suite. A
candidate that meets the three conditions and beats the second rewriter
overall would change the paper's numbers, and we would like to hear
about it in an issue with the module attached.

There is also a question that we have not settled. Our rewriting has to
read a provision over objects with attributes either existentially or
universally, and neither choice wins across the stored outputs. A rule
that beats both fixed choices without seeing the case facts would show
how far a charitable rewriting can go.
