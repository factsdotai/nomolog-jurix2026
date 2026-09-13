% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 37070a5e582504d4
applies :- corner_door_pair(door).
obligation_met :- edge_corner_distance(door, 800).
obligation_met :- turning_circle_outside(door, 1500).
r1: violation <= corner_door_pair(door), not obligation_met.
