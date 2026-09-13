% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 5f77b43b20e17e8d
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- door(Door), building(Building), landing_door(Door, Building), non_dwelling_building(Building).
r1: violation <= door(Door), building(Building), landing_door(Door, Building), non_dwelling_building(Building), swings_across_landing(Door), not neg_scope_1.
neg_scope_1 :- door(Door), complies_para_1_21c(Door).
