% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ba81eefab5258a4c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- non_dwelling_building(building), corridor_door(door), landing_door(door, building), not neg_scope_1.
r1: violation <= non_dwelling_building(building), corridor_door(door), landing_door(door, building), not neg_scope_1, swings_across_landing(door).
neg_scope_1 :- complies_para_1_21c(door).
