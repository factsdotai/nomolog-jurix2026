% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 992c7eb1676688b0
applies :- fire_doorset(FireDoorset), held_open_by_fusible_link(FireDoorset).
r1: violation <= fire_doorset(FireDoorset), held_open_by_fusible_link(FireDoorset), escape_opening(FireDoorset), not neg_scope_1.
neg_scope_1 :- fire_doorset(FireDoorset), complies_c7(FireDoorset).
