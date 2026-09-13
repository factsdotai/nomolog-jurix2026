% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 845a06809b1d1cd4
applies :- building(building), fire_in_building(building), lift_used(lift, building).
r1: violation <= building(building), fire_in_building(building), lift_used(lift, building), not neg_scope_1.
neg_scope_1 :- part_of_evacuation_plan(lift), appropriately_sited(lift), fire_safety_features(lift).
