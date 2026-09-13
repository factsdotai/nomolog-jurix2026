% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 19901e96da926ef1
applies :- existing_dwelling(dwelling), complete_new_system(system, dwelling).
obligation_met :- whole_system_performance_assessed(system).
r1: violation <= existing_dwelling(dwelling), complete_new_system(system, dwelling), not obligation_met.
