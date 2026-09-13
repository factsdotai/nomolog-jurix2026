% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8dc9aad5151b33a2
applies :- lift(Lift), building(Building), lift_used(Lift, Building), fire_in_building(Building).
r1: violation <= lift(Lift), building(Building), lift_used(Lift, Building), fire_in_building(Building), not neg_scope_1.
r2: violation <= lift(Lift), building(Building), lift_used(Lift, Building), fire_in_building(Building), not neg_scope_2.
r3: violation <= lift(Lift), building(Building), lift_used(Lift, Building), fire_in_building(Building), not neg_scope_3.
neg_scope_1 :- lift(Lift), part_of_evacuation_plan(Lift).
neg_scope_2 :- lift(Lift), appropriately_sited(Lift).
neg_scope_3 :- lift(Lift), fire_safety_features(Lift).
