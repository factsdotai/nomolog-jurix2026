% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 39410affc4e119a3
applies :- building(Building), non_dwelling_building(Building), door(Door), landing_door(Door, Building), not neg_scope_1.
r1: violation <= building(Building), non_dwelling_building(Building), door(Door), landing_door(Door, Building), not neg_scope_1, swings_across_landing(Door).
neg_scope_1 :- door(Door), complies_para_1_21c(Door).
