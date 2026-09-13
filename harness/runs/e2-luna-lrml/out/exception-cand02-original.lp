% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0e61837a5f672cf4
% term-flattened: nested call -> constant capacity_n1
% term-flattened: nested call -> constant capacity_o1
applies :- replacement_generation_system(n1, o1), not neg_scope_1.
obligation_met :- capacity_n1 >= capacity_o1.
r1: violation <= replacement_generation_system(n1, o1), not neg_scope_1, not obligation_met.
neg_scope_1 :- smaller_claimed(n1), demonstrated_more_appropriate(n1).
