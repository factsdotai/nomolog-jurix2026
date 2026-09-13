% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c51da262d333834f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), non_dwelling_building(Building), door(Door), landing_door(Door, Building).
r1: violation <= building(Building), non_dwelling_building(Building), door(Door), landing_door(Door, Building), swings_across_landing(Door), not neg_scope_1.
neg_scope_1 :- door(Door), complies_para_1_21c(Door).
