% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 99aaed69a71cffee
applies :- fire_doorset(FireDoorset), fusible_link(FireDoorset).
obligation_met(FireDoorset) :- fire_doorset(FireDoorset), not neg_scope_1.
obligation_met(FireDoorset) :- fire_doorset(FireDoorset), complies_c7(FireDoorset).
r1: violation <= fire_doorset(FireDoorset), fusible_link(FireDoorset), not obligation_met(FireDoorset).
neg_scope_1 :- fire_doorset(FireDoorset), escape_opening(FireDoorset).
