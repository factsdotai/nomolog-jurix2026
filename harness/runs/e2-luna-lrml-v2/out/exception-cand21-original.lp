% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 67efc1d1d5cef32c
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- outward_opening_door(OutwardOpeningDoor), corner_door_pair(door).
obligation_met :- edge_corner_distance(door, 800).
r1: violation <= outward_opening_door(OutwardOpeningDoor), corner_door_pair(door), not obligation_met.
r2: exempt_r2 <= outward_opening_door(OutwardOpeningDoor), corner_door_pair(door), turning_circle_outside(door, 1500).
#conflict violation, exempt_r2.
r2 > r1.
