% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 7195cc33e588ee33
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), existing_dwelling(Dwelling), heating_system(HeatingSystem), complete_new_system(HeatingSystem, Dwelling).
obligation_met(HeatingSystem) :- heating_system(HeatingSystem), whole_system_performance_assessed(HeatingSystem).
r1: violation <= dwelling(Dwelling), existing_dwelling(Dwelling), heating_system(HeatingSystem), complete_new_system(HeatingSystem, Dwelling), not obligation_met(HeatingSystem).
