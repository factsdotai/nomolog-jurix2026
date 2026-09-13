% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 45cf10c302362638
% n_statements: 3  n_overrides: 2  dangling: 0
% override-inert: r1 has no violation rules
applies :- fire_doorset(FireDoorset), fusible_link(FireDoorset).
% permission: no violation rule (policy P4)
r1: violation <= fire_doorset(FireDoorset), fusible_link(FireDoorset), escape_opening(FireDoorset), held_open_by_fusible_link(FireDoorset).
r2: exempt_r3 <= fire_doorset(FireDoorset), fusible_link(FireDoorset), escape_opening(FireDoorset), complies_c7(FireDoorset).
#conflict violation, exempt_r3.
r2 > r1.
