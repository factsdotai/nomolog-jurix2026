% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c4d49c0c441e1d0e
applies :- fire_doorset(doorset), not neg_scope_1.
applies :- fire_doorset(doorset), complies_c7(doorset).
% permission: no violation rule (policy P4)
neg_scope_1 :- escape_opening(doorset).
