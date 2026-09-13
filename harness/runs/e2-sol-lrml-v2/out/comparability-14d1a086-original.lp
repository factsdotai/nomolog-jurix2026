% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2b302edc616fb8bb
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- lifting_device(lifting_device), serves_floor(lifting_device, floor_level).
obligation_met :- opposite_end_against_wall(lifting_device, floor_level).
r1: violation <= lifting_device(lifting_device), serves_floor(lifting_device, floor_level), not obligation_met.
