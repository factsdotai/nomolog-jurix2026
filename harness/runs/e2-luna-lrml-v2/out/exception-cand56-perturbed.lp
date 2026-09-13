% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: bdcaeede3b6e7785
% n_statements: 2  n_overrides: 1  dangling: 0
% override-inert: r1 has no violation rules
applies :- fire_doorset(x), fusible_link(x).
% permission: no violation rule (policy P4)
r1: violation <= fire_doorset(x), fusible_link(x), escape_opening(x), not neg_scope_1, held_open_by(x, fusible_link).
neg_scope_1 :- complies_c7(x).
