% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ba4cfd19bb9fd914
applies :- non_dwelling_building(building), landing_door(door, building), not neg_scope_1.
r1: violation <= non_dwelling_building(building), landing_door(door, building), not neg_scope_1, swings_across_landing(door).
neg_scope_1 :- complies_para_1_21c(door).
