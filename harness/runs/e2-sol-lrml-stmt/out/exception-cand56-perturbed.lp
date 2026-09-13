% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6a16003e4cd69a44
applies :- fire_doorset(d), fusible_link(d).
r1: violation <= fire_doorset(d), fusible_link(d), escape_opening(d), not neg_scope_1.
neg_scope_1 :- complies_c7(d).
