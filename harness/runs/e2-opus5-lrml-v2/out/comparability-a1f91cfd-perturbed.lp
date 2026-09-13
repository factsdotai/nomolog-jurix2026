% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 1a245a250970d3d7
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- dwelling(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), individual_target_rates(Dwelling).
r1: violation <= dwelling(Dwelling), not obligation_met(Dwelling).
r2: exempt_r2 <= building(Building), multi_dwelling_building(Building).
#conflict violation, exempt_r2.
r2 > r1.
