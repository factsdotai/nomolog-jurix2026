% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 36a2b69344860fa1
applies :- fire_doorset(FireDoorset), not neg_scope_2.
% permission: no violation rule (policy P4)
neg_scope_1 :- fire_doorset(FireDoorset), complies_with(FireDoorset, paragraph_c7).
neg_scope_2 :- fire_doorset(FireDoorset), escape_opening(FireDoorset), not neg_scope_1.
