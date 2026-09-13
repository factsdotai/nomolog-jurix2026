applies :- light_permeable_structure(S).
r1: violation <= light_permeable_structure(S), not withstands_normal_load(S).
r2: exempt <= light_permeable_structure(S), protected_by_collision_barrier(S).
#conflict violation, exempt.
r2 > r1.
