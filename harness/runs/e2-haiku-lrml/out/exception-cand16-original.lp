% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 52ca45e8008b2cfb
applies :- non_dwelling_building(NonDwellingBuilding), door(Door), swings_across_landing(Door), not neg_scope_1.
r1: violation <= non_dwelling_building(NonDwellingBuilding), door(Door), swings_across_landing(Door), not neg_scope_1.
neg_scope_1 :- door(Door), complies_para_1_21c(Door).
