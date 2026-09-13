% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2575bfc8559e7c8a
applies :- fire_doorset(FireDoorset), held_open_by_fusible_link(FireDoorset).
obligation_met(FireDoorset) :- fire_doorset(FireDoorset), not neg_scope_1.
obligation_met(FireDoorset) :- fire_doorset(FireDoorset), complies_c7(FireDoorset).
r1: violation <= fire_doorset(FireDoorset), held_open_by_fusible_link(FireDoorset), not obligation_met(FireDoorset).
neg_scope_1 :- fire_doorset(FireDoorset), escape_opening(FireDoorset).
