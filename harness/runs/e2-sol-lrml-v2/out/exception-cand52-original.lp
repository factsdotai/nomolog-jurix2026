% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 84c3682d2b763a01
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(building), fire_in_building(building).
r1: violation <= building(building), fire_in_building(building), lift_used(lift, building).
r2: exempt_r2 <= building(building), fire_in_building(building), part_of_evacuation_plan(lift), appropriately_sited(lift), fire_safety_features(lift).
#conflict violation, exempt_r2.
r2 > r1.
