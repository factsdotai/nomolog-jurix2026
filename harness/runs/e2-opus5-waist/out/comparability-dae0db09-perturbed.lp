% exception as superior defeasible rule (the defeat idiom)
applies :- light_permeable_structure(G).
r1: violation <= light_permeable_structure(G), not withstands_normal_load(G).
r2: exempt <= light_permeable_structure(G), protected_by_collision_barrier(G).
#conflict violation, exempt.
r2 > r1.
