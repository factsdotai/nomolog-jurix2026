% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4101547b7de4934d
applies :- lift_used(lift, building), fire_in_building(building).
r1: violation <= lift_used(lift, building), fire_in_building(building), not neg_scope_1.
neg_scope_1 :- part_of_evacuation_plan(lift), appropriately_sited(lift), fire_safety_features(lift).
