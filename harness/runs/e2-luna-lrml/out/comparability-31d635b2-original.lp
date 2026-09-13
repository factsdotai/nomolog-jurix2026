% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 64fd0165c6ded605
applies :- existing_dwelling(d), complete_new_system(s, d).
obligation_met :- whole_system_performance_assessed(s).
r1: violation <= existing_dwelling(d), complete_new_system(s, d), not obligation_met.
