% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 36c1f7a906ad3430
applies :- lift(Lift), building(Building), fire_in_building(Building).
r1: violation <= lift(Lift), building(Building), fire_in_building(Building), lift_used(Lift, Building), not neg_scope_1.
neg_scope_1 :- lift(Lift), part_of_evacuation_plan(Lift), appropriately_sited(Lift), fire_safety_features(Lift).
