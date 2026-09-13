applies :- light_permeable_structure(S).
applies :- masonry_wall(M).
r1: violation <= light_permeable_structure(S), not load_ok(S).
r2: exempt <= light_permeable_structure(S), protected_by_collision_barrier(S).
r3: violation <= masonry_wall(M), not load_ok(M).
r4: exempt <= masonry_wall(M), protected_by_collision_barrier(M).
load_ok(X) :- withstands_normal_load(X).
#conflict violation, exempt.
r2 > r1.
r4 > r3.
