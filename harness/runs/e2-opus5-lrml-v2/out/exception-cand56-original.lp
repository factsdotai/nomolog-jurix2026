% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f422171b336cfbb6
% n_statements: 3  n_overrides: 2  dangling: 0
% override-inert: r1 has no violation rules
applies :- fire_doorset(FireDoorset), fusible_link(FusibleLink).
% permission: no violation rule (policy P4)
r1: violation <= fire_doorset(FireDoorset), escape_opening(FireDoorset), held_open_by_fusible_link(FireDoorset).
r2: exempt_r3 <= fire_doorset(FireDoorset), escape_opening(FireDoorset), complies_with(FireDoorset, paragraph_c7).
#conflict violation, exempt_r3.
r2 > r1.
