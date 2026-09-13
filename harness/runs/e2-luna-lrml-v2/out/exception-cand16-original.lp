% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 68952d0980fc746c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- non_dwelling_building(NonDwellingBuilding), door(Door), not neg_scope_1.
r1: violation <= non_dwelling_building(NonDwellingBuilding), door(Door), not neg_scope_1, swings_across_landing(Door).
neg_scope_1 :- door(Door), complies_para_1_21c(Door).
