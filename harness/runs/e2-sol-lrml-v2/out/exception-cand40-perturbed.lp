% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 3bb38db5632b7f00
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- major_renovation_residential(building), parking_space(parking_space, building).
obligation_met :- cable_route(parking_space).
r1: violation <= major_renovation_residential(building), parking_space(parking_space, building), not obligation_met.
r2: exempt_r2 <= major_renovation_residential(building), parking_space(parking_space, building), install_cost_fraction(building, cost_fraction), cost_fraction > 0.07.
#conflict violation, exempt_r2.
r2 > r1.
