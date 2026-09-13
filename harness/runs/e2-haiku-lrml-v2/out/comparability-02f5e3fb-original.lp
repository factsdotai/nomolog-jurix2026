% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 91de04e10e9084c3
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), new_residential_building(Building).
obligation_met(Building) :- building(Building), overheating_info_given_to_owner(Building).
r1: violation <= building(Building), new_residential_building(Building), not obligation_met(Building).
