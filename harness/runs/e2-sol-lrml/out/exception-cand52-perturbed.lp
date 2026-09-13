% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7d9f90b329ce029b
applies :- building(b), fire_in_building(b), lift_used(l, b), not neg_scope_1.
r1: violation <= building(b), fire_in_building(b), lift_used(l, b), not neg_scope_1.
neg_scope_1 :- part_of_evacuation_plan(l), appropriately_sited(l), fire_safety_features(l).
