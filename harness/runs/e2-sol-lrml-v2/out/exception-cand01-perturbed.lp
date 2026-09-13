% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 04490edc01e45c86
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- cavity(cavity).
obligation_met :- surface_class_ok(cavity).
r1: violation <= cavity(cavity), not obligation_met.
r2: exempt_r2 <= cavity(cavity), fire_resisting_only_loadbearing(cavity).
r3: exempt_r2 <= cavity(cavity), meets_diagram_9_2(cavity).
r4: exempt_r2 <= cavity(cavity), above_fire_resisting_ceiling(cavity).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
r4 > r1.
