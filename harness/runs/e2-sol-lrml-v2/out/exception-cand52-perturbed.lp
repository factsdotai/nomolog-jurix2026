% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 5cfdbb156f77b771
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- building(b), fire_in_building(b), lift_used(l, b).
r1: violation <= building(b), fire_in_building(b), lift_used(l, b).
r2: exempt_r2 <= building(b), fire_in_building(b), lift_used(l, b), part_of_evacuation_plan(l), appropriately_sited(l), fire_safety_features(l).
#conflict violation, exempt_r2.
r2 > r1.
