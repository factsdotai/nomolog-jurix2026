% Prohibition + conjunctive exception: all three conditions must hold to excuse use.
applies :- fire_in_building(B).
r1: violation <= fire_in_building(B), lift_used(L, B).
r2: exempt <= fire_in_building(B), lift_used(L, B), part_of_evacuation_plan(L), appropriately_sited(L), fire_safety_features(L).
#conflict violation, exempt.
r2 > r1.
