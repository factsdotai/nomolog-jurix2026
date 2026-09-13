% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8f0e6b2900f07879
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- cavity(Cavity).
obligation_met :- flame_spread_class(CavitySurfaces, CavitySurfacesFlameSpreadClass), as_per(CavitySurfacesFlameSpreadClass, table_9_1).
r1: violation <= cavity(Cavity), not obligation_met.
r2: exempt_r2 <= cavity(Cavity), fire_resisting_only_loadbearing(Cavity).
r3: exempt_r2 <= cavity(Cavity), meets_diagram_9_2(Cavity).
r4: exempt_r2 <= cavity(Cavity), above_fire_resisting_ceiling(Cavity).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
r4 > r1.
