applies :- standalone_door(D), corner_door_pair(D).
r1: violation <= standalone_door(D), corner_door_pair(D), edge_corner_distance(D, X), X < 800.
r2: exempt <= standalone_door(D), corner_door_pair(D), turning_circle_outside(D, C), C >= 1500.
#conflict violation, exempt.
r2 > r1.
