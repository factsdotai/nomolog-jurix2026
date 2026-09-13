% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 04d12e782c12fc65
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), existing_dwelling(Dwelling), system(System), complete_new_system(System, Dwelling).
obligation_met(System) :- system(System), whole_system_performance_assessed(System).
r1: violation <= dwelling(Dwelling), existing_dwelling(Dwelling), system(System), complete_new_system(System, Dwelling), not obligation_met(System).
