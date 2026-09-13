% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6ced97fbeb8d474f
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- cavity(c).
obligation_met :- surface_class_ok(c).
r1: violation <= cavity(c), not obligation_met.
r2: exempt_r2 <= cavity(c), fire_resisting_only_loadbearing(c).
r3: exempt_r2 <= cavity(c), meets_diagram_9_2(c).
r4: exempt_r2 <= cavity(c), above_fire_resisting_ceiling(c).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
r4 > r1.
