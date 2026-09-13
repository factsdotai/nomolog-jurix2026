% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6d2d2e109163bc00
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- door(Door), non_dwelling_building(Door).
r1: violation <= door(Door), non_dwelling_building(Door), swings_across_landing(Door).
r2: exempt_r2 <= door(Door), non_dwelling_building(Door), complies_para_1_21c(Door).
#conflict violation, exempt_r2.
r2 > r1.
