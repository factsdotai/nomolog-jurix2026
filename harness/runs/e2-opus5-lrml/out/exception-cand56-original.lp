% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3f5a563e1df72653
applies :- fire_doorset(FireDoorset), not neg_scope_1.
applies :- fire_doorset(FireDoorset), complies_c7(FireDoorset).
% permission: no violation rule (policy P4)
neg_scope_1 :- fire_doorset(FireDoorset), escape_opening(FireDoorset).
