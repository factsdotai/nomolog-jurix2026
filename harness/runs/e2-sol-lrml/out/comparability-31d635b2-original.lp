% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9755b1c069d574cf
applies :- dwelling(Dwelling), existing_dwelling(Dwelling), system(System), complete_new_system(System, Dwelling).
obligation_met(System) :- system(System), whole_system_performance_assessed(System).
r1: violation <= dwelling(Dwelling), existing_dwelling(Dwelling), system(System), complete_new_system(System, Dwelling), not obligation_met(System).
