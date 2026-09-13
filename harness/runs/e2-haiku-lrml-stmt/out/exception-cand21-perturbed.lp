% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dc362c9d1cfea1fb
% term-flattened: nested call -> constant edge_corner_distance_outward_opening_doo
% term-flattened: nested call -> constant turning_circle_outside_outward_opening_d
applies :- outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor).
obligation_met :- edge_corner_distance_outward_opening_doo >= 0.
obligation_met :- turning_circle_outside_outward_opening_d >= 0.
r1: violation <= outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), not obligation_met.
