% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 07f8c76018bce999
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant free_height_e
applies :- protruding_element(e).
obligation_met :- free_height_e >= 2200.
r1: violation <= protruding_element(e), not obligation_met.
r2: exempt_r2 <= protruding_element(e), area_protected(e).
#conflict violation, exempt_r2.
r2 > r1.
