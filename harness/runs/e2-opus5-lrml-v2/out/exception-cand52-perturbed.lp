% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 4b1c09f031c73520
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- lift(Lift), building(Building), lift_used(Lift, Building), fire_in_building(Building).
r1: violation <= lift(Lift), building(Building), lift_used(Lift, Building), fire_in_building(Building).
r2: exempt_r2 <= lift(Lift), building(Building), lift_used(Lift, Building), fire_in_building(Building), part_of_evacuation_plan(Lift), appropriately_sited(Lift), fire_safety_features(Lift).
#conflict violation, exempt_r2.
r2 > r1.
