% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: bf5493bd92f10aea
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- door(Door), corner_door_pair(Door), edge_corner_distance(Door, distance).
obligation_met :- distance >= 800.
r1: violation <= door(Door), corner_door_pair(Door), edge_corner_distance(Door, distance), not obligation_met.
r2: exempt_r2 <= door(Door), corner_door_pair(Door), turning_circle_outside(Door, diameter), diameter >= 1500.
#conflict violation, exempt_r2.
r2 > r1.
