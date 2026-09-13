applies :- lift_used(L, B), fire_in_building(B).
r1: violation <= lift_used(L, B), fire_in_building(B), not exempt(L, B).
r2: exempt <= lift_used(L, B), fire_in_building(B), part_of_evacuation_plan(L), appropriately_sited(L), fire_safety_features(L).
#conflict violation, exempt.
r2 > r1.
