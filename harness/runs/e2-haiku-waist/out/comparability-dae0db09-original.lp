applies :- light_permeable_structure(S).
r1: violation <= light_permeable_structure(S), not load_ok(S).
r2: exempt <= light_permeable_structure(S), protected_by_collision_barrier(S).
load_ok(S) :- withstands_normal_load(S).
#conflict violation, exempt.
r2 > r1.
