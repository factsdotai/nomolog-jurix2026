% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f1f78f534f262712
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- lift(Lift), fire_in_building(building).
r1: violation <= lift(Lift), fire_in_building(building), lift_used(Lift, building).
r2: exempt_r2 <= lift(Lift), fire_in_building(building), part_of_evacuation_plan(Lift), appropriately_sited(Lift), protected(Lift), fire_safety_features(Lift).
#conflict violation, exempt_r2.
r2 > r1.
