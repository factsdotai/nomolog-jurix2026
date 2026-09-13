% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ba88418fcfc8b4b2
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- lift(Lift), fire_in_building(Lift).
r1: violation <= lift(Lift), fire_in_building(Lift), lift_used(Lift).
r2: exempt_r2 <= lift(Lift), fire_in_building(Lift), part_of_evacuation_plan(Lift), appropriately_sited(Lift), fire_safety_features(Lift).
#conflict violation, exempt_r2.
r2 > r1.
