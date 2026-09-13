% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 5612d50670556cb6
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- door(Door), corner_door_pair(Door).
obligation_met(Door) :- door(Door), edge_corner_distance(Door, DoorEdgeCornerDistance), DoorEdgeCornerDistance >= 800.
r1: violation <= door(Door), corner_door_pair(Door), not obligation_met(Door).
r2: exempt_r2 <= door(Door), corner_door_pair(Door), turning_circle_outside(Door, DoorTurningCircleOutside), DoorTurningCircleOutside >= 1500.
#conflict violation, exempt_r2.
r2 > r1.
