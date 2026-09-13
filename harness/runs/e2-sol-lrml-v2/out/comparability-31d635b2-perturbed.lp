% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 19901e96da926ef1
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- existing_dwelling(dwelling), complete_new_system(system, dwelling).
obligation_met :- whole_system_performance_assessed(system).
r1: violation <= existing_dwelling(dwelling), complete_new_system(system, dwelling), not obligation_met.
