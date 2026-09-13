% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 623f4e088f7ace3e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- existing_dwelling(d), complete_new_system(s, d).
obligation_met :- whole_system_performance_assessed(s).
r1: violation <= existing_dwelling(d), complete_new_system(s, d), not obligation_met.
