% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dffcc4e8e918c3e6
applies :- outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), edge_corner_distance(OutwardOpeningDoor, 800).
obligation_met(OutwardOpeningDoor) :- outward_opening_door(OutwardOpeningDoor), distance_from_corner(OutwardOpeningDoor, OutwardOpeningDoorDistanceFromCorner), OutwardOpeningDoorDistanceFromCorner >= 800.
obligation_met(OutwardOpeningDoor) :- outward_opening_door(OutwardOpeningDoor), turning_circle_outside(OutwardOpeningDoor, 1500).
r1: violation <= outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), edge_corner_distance(OutwardOpeningDoor, 800), not obligation_met(OutwardOpeningDoor).
