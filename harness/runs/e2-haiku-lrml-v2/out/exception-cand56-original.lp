% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8636e43faed9e67e
% n_statements: 3  n_overrides: 1  dangling: 0
applies :- fire_doorset(FireDoorset), fusible_link(FireDoorset).
applies :- fire_doorset(FireDoorset), escape_opening(FireDoorset).
% permission: no violation rule (policy P4)
r1: violation <= fire_doorset(FireDoorset), escape_opening(FireDoorset), held_open(FireDoorset).
r2: exempt_r3 <= fire_doorset(FireDoorset), escape_opening(FireDoorset), complies_c7(FireDoorset).
#conflict violation, exempt_r3.
r2 > r1.
