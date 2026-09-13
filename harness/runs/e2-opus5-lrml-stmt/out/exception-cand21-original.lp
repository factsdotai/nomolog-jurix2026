% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3e9c13df020620c0
applies :- door(Door), corner_door_pair(Door).
obligation_met(Door) :- door(Door), edge_corner_distance(Door, DoorEdgeCornerDistance), DoorEdgeCornerDistance >= 800.
obligation_met(Door) :- door(Door), turning_circle_outside(Door, DoorTurningCircleOutside), DoorTurningCircleOutside >= 1500.
r1: violation <= door(Door), corner_door_pair(Door), not obligation_met(Door).
