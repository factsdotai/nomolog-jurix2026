% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 981bd0a911f1eeba
% term-flattened: nested call -> constant edge_corner_distance_door
% term-flattened: nested call -> constant edge_corner_distance_door
applies :- corner_door_pair(door), edge_corner_distance_door < 800.
obligation_met :- edge_corner_distance_door >= 800.
obligation_met :- turning_circle_outside(door, 1500).
r1: violation <= corner_door_pair(door), edge_corner_distance_door < 800, not obligation_met.
