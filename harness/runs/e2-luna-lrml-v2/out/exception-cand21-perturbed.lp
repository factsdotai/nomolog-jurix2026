% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: abbc0e47bee2e9ca
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- door(Door), corner_door_pair(Door).
obligation_met(Door) :- door(Door), edge_corner_distance(Door, 800).
r1: violation <= door(Door), corner_door_pair(Door), not obligation_met(Door).
r2: exempt_r2 <= door(Door), corner_door_pair(Door), turning_circle_outside(Door, 1500).
#conflict violation, exempt_r2.
r2 > r1.
