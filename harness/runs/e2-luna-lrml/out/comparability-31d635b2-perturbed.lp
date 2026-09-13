% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 002742afa68b8d27
applies :- existing_dwelling(d1), complete_new_system(s1, d1).
obligation_met :- whole_system_performance_assessed(s1).
r1: violation <= existing_dwelling(d1), complete_new_system(s1, d1), not obligation_met.
