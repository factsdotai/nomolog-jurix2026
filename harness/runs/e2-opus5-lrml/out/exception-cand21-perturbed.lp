% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c978eef41486006e
applies :- outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor).
obligation_met(OutwardOpeningDoor) :- outward_opening_door(OutwardOpeningDoor), edge_corner_distance(OutwardOpeningDoor, OutwardOpeningDoorEdgeCornerDistance), OutwardOpeningDoorEdgeCornerDistance >= 800.
obligation_met(OutwardOpeningDoor) :- outward_opening_door(OutwardOpeningDoor), turning_circle_outside(OutwardOpeningDoor, OutwardOpeningDoorTurningCircleOutside), OutwardOpeningDoorTurningCircleOutside >= 1500.
r1: violation <= outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), not obligation_met(OutwardOpeningDoor).
