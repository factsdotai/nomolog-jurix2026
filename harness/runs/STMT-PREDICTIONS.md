# Statement-only parity sub-arm — pre-committed predictions

Committed before the first scored statement-only generation (this commit =
the pre-registration; launcher started only after push). Block =
LRML_PARITY_FORMAT minus the worked example, nothing else changed. Runs:
e2-{opus5,haiku,sol,luna}-lrml-stmt, both slices, both variants, k=30.

This completes a 2x2 on Opus: flat (neither) 0/20 · taught (examples only)
0/20 · parity (statement+example) 4/20 · statement-only (this arm).

## Point predictions (exception exact, original)

| model | prediction | band | reasoning |
|---|---|---|---|
| Opus 5 | 3/20 | 1-4 | statement carries most of the effect on strong reasoners; example mainly anchors format |
| Sol | 2/20 | 0-4 | replicates at similar strength |
| Luna | 1/20 | 0-3 | smaller tier leans more on the demonstration |
| Haiku 4.5 | 0/20 | 0-1 | below the capability threshold; floor |

Comparability (exact, original): Opus 19/51 +-4 (statement should not move
comparability); Sol 13/51 +-4; Luna 18/51 +-5 (between flat 14/51 and parity
22/51 if the statement partially carries the comparability gain); Haiku
13/51 +-3.

## Pre-registered interpretation

Statement-only ~ parity on Opus/Sol => the convention statement is the
active ingredient and the paper's mechanism sentence is restored in
sharpened form ("stating the convention suffices for strong reasoners").
Statement-only ~ flat => the statement x example interaction is the story
(neither alone suffices). Intermediate => both contribute; reported as
such. All cells reported either way.

## OUTCOME (appended after all 4 runs; predictions above untouched)

Exception exact, original: Opus 2/20 (band 1-4 ✓), Sol 2/20 (0-4 ✓),
Luna 2/20 (0-3 ✓, top), Haiku 0/20 (✓). Comparability: Opus 20/51 ✓,
Haiku 13/51 ✓ (point-exact), Luna 18/51 ✓, Sol 21/51 ✗ high (predicted
13±4 — the statement helps Sol comparability more than predicted).

The completed Opus 2x2: flat 0 · taught (examples only) 0 · statement-only
2 · statement+example 4. Cross-vendor: statement-only EQUALS parity on both
OpenAI tiers (2/20 = 2/20) — there the statement carries the entire effect
and the example adds nothing. Unified mechanism, per the pre-committed
"intermediate" interpretation refined by the OpenAI cells: the convention
statement is the active ingredient wherever the effect exists; the worked
example is an amplifier on exactly one model (Opus); strategy exemplars
without the statement are inert on all four models; and no combination
closes more than a fifth of the gap to Nomolog.


_Freeze-to-first-generation interval: ~1 minute (commit 253bef9 12:35:36, pushed, then launched). Same-repo, same-author pre-registration; no external registry._
