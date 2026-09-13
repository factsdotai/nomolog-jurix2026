% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2b92068c219e0b11
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- generation_system(new_system), generation_system(existing_system), replacement_generation_system(new_system, existing_system), capacity(new_system, new_capacity), capacity(existing_system, existing_capacity).
obligation_met :- new_capacity >= existing_capacity.
r1: violation <= generation_system(new_system), generation_system(existing_system), replacement_generation_system(new_system, existing_system), capacity(new_system, new_capacity), capacity(existing_system, existing_capacity), not obligation_met.
r2: exempt_r2 <= replacement_generation_system(new_system, existing_system), capacity(new_system, new_capacity), capacity(existing_system, existing_capacity), smaller_claimed(new_system), demonstrated_more_appropriate(new_system).
#conflict violation, exempt_r2.
r2 > r1.
