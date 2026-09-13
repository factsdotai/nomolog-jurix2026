% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fd369fd1acf56888
applies :- generation_system(new_system), generation_system(existing_system), replacement_generation_system(new_system, existing_system), capacity(new_system, new_capacity), capacity(existing_system, existing_capacity), not neg_scope_1.
obligation_met :- new_capacity >= existing_capacity.
r1: violation <= generation_system(new_system), generation_system(existing_system), replacement_generation_system(new_system, existing_system), capacity(new_system, new_capacity), capacity(existing_system, existing_capacity), not neg_scope_1, not obligation_met.
neg_scope_1 :- smaller_claimed(new_system), demonstrated_more_appropriate(new_system).
