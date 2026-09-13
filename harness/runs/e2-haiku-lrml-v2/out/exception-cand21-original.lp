% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 4924533ce3383f6b
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant edge_corner_distance_door
% term-flattened: nested call -> constant edge_corner_distance_door
applies :- door(Door), outward_opening(Door), corner_door_pair(Door), edge_corner_distance_door < 800.
obligation_met :- edge_corner_distance_door >= 800.
r1: violation <= door(Door), outward_opening(Door), corner_door_pair(Door), edge_corner_distance_door < 800, not obligation_met.
r2: exempt_r2 <= door(Door), outward_opening(Door), corner_door_pair(Door), turning_circle_outside(Door, 1500).
#conflict violation, exempt_r2.
r2 > r1.
