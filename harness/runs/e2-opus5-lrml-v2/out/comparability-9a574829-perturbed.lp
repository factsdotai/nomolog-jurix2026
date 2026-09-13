% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2e8c52dca2bd2670
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building).
obligation_met(Building) :- building(Building), whole_building_rate_met(Building).
r1: violation <= building(Building), not obligation_met(Building).
