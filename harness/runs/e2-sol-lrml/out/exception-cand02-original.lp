% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 56662c2a6d0e002b
applies :- replacement_generation_system(n1, o1), generation_system(n1), generation_system(o1), capacity(n1, new_capacity), capacity(o1, existing_capacity), not neg_scope_1.
obligation_met :- new_capacity >= existing_capacity.
r1: violation <= replacement_generation_system(n1, o1), generation_system(n1), generation_system(o1), capacity(n1, new_capacity), capacity(o1, existing_capacity), not neg_scope_1, not obligation_met.
neg_scope_1 :- smaller_claimed(n1), demonstrated_more_appropriate(n1).
