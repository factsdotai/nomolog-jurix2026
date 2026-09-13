% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 48b86cf92a66bd74
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- landing(Landing), indoor_area(Landing).
applies :- landing(Landing), outdoor_area(Landing).
obligation_met(Landing) :- landing(Landing), safe(Landing), sufficiently_spacious(Landing), suitable_for_purpose(Landing).
r1: violation <= landing(Landing), indoor_area(Landing), not obligation_met(Landing).
r2: violation <= landing(Landing), outdoor_area(Landing), not obligation_met(Landing).
