applies :- corner_door_pair(D).
r1: violation <= corner_door_pair(D), edge_corner_distance(D, Dist), Dist < 800.
r2: exempt <= corner_door_pair(D), turning_circle_outside(D, Circ), Circ >= 1500.
#conflict violation, exempt.
r2 > r1.
