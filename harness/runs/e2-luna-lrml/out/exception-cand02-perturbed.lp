% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a85b36e35ddfa91f
% term-flattened: nested call -> constant capacity_new_system
% term-flattened: nested call -> constant capacity_existing_system
applies :- replacement_generation_system(new_system, existing_system), generation_system(existing_system), not neg_scope_1.
obligation_met :- capacity_new_system >= capacity_existing_system.
r1: violation <= replacement_generation_system(new_system, existing_system), generation_system(existing_system), not neg_scope_1, not obligation_met.
neg_scope_1 :- smaller_claimed(new_system), demonstrated_more_appropriate(new_system).
