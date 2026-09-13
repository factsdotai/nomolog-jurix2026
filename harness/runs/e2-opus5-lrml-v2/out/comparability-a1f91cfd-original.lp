% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d4e32904df730419
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(Building), multi_dwelling_building(Building).
obligation_met(Building) :- building(Building), individual_target_rates(Building).
r1: violation <= building(Building), multi_dwelling_building(Building), not obligation_met(Building).
r2: exempt_r2 <= building(Building), multi_dwelling_building(Building).
#conflict violation, exempt_r2.
r2 > r1.
