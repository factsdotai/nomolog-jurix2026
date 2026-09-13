% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d4d0bb7c6cc76b52
% n_statements: 3  n_overrides: 2  dangling: 0
% override-inert: r1 has no violation rules
applies :- doorset(Doorset), fire_doorset(Doorset), fusible_link(Doorset).
% permission: no violation rule (policy P4)
r1: violation <= doorset(Doorset), fire_doorset(Doorset), fusible_link(Doorset), escape_opening(Doorset), held_open(Doorset).
r2: exempt_r3 <= doorset(Doorset), fire_doorset(Doorset), fusible_link(Doorset), escape_opening(Doorset), complies_c7(Doorset).
#conflict violation, exempt_r3.
r2 > r1.
