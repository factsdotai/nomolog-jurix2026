% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d67c549f903aa897
applies :- corner_door_pair(door), edge_corner_distance(door, distance), turning_circle_outside(door, diameter).
obligation_met :- distance >= 800.
obligation_met :- diameter >= 1500.
r1: violation <= corner_door_pair(door), edge_corner_distance(door, distance), turning_circle_outside(door, diameter), not obligation_met.
