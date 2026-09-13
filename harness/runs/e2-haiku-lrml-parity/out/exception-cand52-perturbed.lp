% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 34e408a1926817b5
applies :- lift(Lift), fire_in_building(Lift).
r1: violation <= lift(Lift), fire_in_building(Lift), lift_used(Lift), part_of_evacuation_plan(Lift).
r2: violation <= lift(Lift), fire_in_building(Lift), lift_used(Lift), appropriately_sited(Lift), fire_safety_features(Lift).
