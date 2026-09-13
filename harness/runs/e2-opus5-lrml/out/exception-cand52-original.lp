% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f7c08c8b6b84ce26
applies :- lift(Lift), building(Building), fire_in_building(Building), not neg_scope_1.
r1: violation <= lift(Lift), building(Building), fire_in_building(Building), not neg_scope_1, lift_used(Lift, Building).
neg_scope_1 :- lift(Lift), part_of_evacuation_plan(Lift), appropriately_sited(Lift), fire_safety_features(Lift).
