% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3569ddf7728c4667
% term-flattened: nested call -> constant turning_circle_outside_outward_opening_d
applies :- outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), edge_corner_distance(OutwardOpeningDoor, 80).
obligation_met :- outward_opening_door(OutwardOpeningDoor), edge_distance_from_corner(OutwardOpeningDoor, OutwardOpeningDoorEdgeDistanceFromCorner), OutwardOpeningDoorEdgeDistanceFromCorner >= 800.
obligation_met :- turning_circle_outside_outward_opening_d >= 1500.
r1: violation <= outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), edge_corner_distance(OutwardOpeningDoor, 80), not obligation_met.
