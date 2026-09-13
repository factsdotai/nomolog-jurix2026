% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 9e44ac83a427f708
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- extension(Extension), extension_to_historic_dwelling(Extension).
obligation_met(Extension) :- extension(Extension), comply_with(Extension, ventilation_standards).
r1: violation <= extension(Extension), extension_to_historic_dwelling(Extension), not obligation_met(Extension).
r2: exempt_r2 <= extension(Extension), extension_to_historic_dwelling(Extension), appearance_match_needed(Extension).
#conflict violation, exempt_r2.
r2 > r1.
