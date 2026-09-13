% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fb0b39ea210c9d1f
% n_statements: 2  n_overrides: 1  dangling: 0
% override-inert: r1 has no violation rules
applies :- fire_doorset(doorset), fusible_link(doorset).
% permission: no violation rule (policy P4)
r1: violation <= fire_doorset(doorset), fusible_link(doorset), escape_opening(doorset), not neg_scope_1, held_open_by(doorset, fusible_link).
neg_scope_1 :- complies_c7(doorset).
