% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cf35b4e66e250e74
applies :- lift(Lift), fire_in_building(building), not neg_scope_1.
r1: violation <= lift(Lift), fire_in_building(building), not neg_scope_1, lift_used(Lift, building).
neg_scope_1 :- lift(Lift), part_of_evacuation_plan(Lift), appropriately_sited(Lift), fire_safety_features(Lift).
