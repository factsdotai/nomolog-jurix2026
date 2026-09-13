% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 23f0be709fa9c978
% term-flattened: nested call -> constant edge_corner_distance_door
% term-flattened: nested call -> constant turning_circle_outside_door
applies :- corner_door_pair(door).
obligation_met :- edge_corner_distance_door >= 800.
obligation_met :- turning_circle_outside_door >= 1500.
r1: violation <= corner_door_pair(door), not obligation_met.
