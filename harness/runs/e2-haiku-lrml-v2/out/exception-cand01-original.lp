% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b0b9de9bed88c94c
% n_statements: 4  n_overrides: 3  dangling: 0
applies :- cavity(Cavity), surface_class_ok(Cavity).
obligation_met(Cavity) :- cavity(Cavity), flame_spread_class(Cavity, CavityFlameSpreadClass), as_per(CavityFlameSpreadClass, table_9_1).
r1: violation <= cavity(Cavity), surface_class_ok(Cavity), not obligation_met(Cavity).
r2: exempt_r2 <= cavity(Cavity), fire_resisting_only_loadbearing(Cavity).
#conflict violation, exempt_r2.
r2 > r1.
r3: exempt_r3 <= cavity(Cavity), meets_diagram_9_2(Cavity).
#conflict violation, exempt_r3.
r3 > r1.
r4: exempt_r4 <= cavity(Cavity), above_fire_resisting_ceiling(Cavity).
#conflict violation, exempt_r4.
r4 > r1.
