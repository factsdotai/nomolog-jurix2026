% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b10eddfccd2afd3f
applies :- generation_system(new_system), generation_system(existing_system), replacement_generation_system(new_system, existing_system), capacity(new_system, new_capacity), capacity(existing_system, existing_capacity).
obligation_met :- new_capacity >= existing_capacity.
obligation_met :- smaller_claimed(new_system), demonstrated_more_appropriate(new_system).
r1: violation <= generation_system(new_system), generation_system(existing_system), replacement_generation_system(new_system, existing_system), capacity(new_system, new_capacity), capacity(existing_system, existing_capacity), not obligation_met.
