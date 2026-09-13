% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2d8dab3c5b80dbfd
applies :- building(building), fire_in_building(building).
r1: violation <= building(building), fire_in_building(building), lift_used(lift, building), not neg_scope_1.
neg_scope_1 :- part_of_evacuation_plan(lift), appropriately_sited(lift), fire_safety_features(lift).
