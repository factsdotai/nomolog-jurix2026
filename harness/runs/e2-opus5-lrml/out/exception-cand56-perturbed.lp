% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: dfcd43bc27a41afd
applies :- fire_doorset(FireDoorset), fusible_link(FireDoorset), not neg_scope_1.
applies :- fire_doorset(FireDoorset), fusible_link(FireDoorset), complies_c7(FireDoorset).
% permission: no violation rule (policy P4)
neg_scope_1 :- fire_doorset(FireDoorset), escape_opening(FireDoorset).
