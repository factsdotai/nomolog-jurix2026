% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4e6d0aced0166423
applies :- corner_door_pair(CornerDoorPair).
obligation_met :- edge_corner_distance >= 800.
obligation_met :- turning_circle_outside = 1500.
r1: violation <= corner_door_pair(CornerDoorPair), not obligation_met.
