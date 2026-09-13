% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: eb2cf26aa435b835
applies :- existing_dwelling(ExistingDwelling), heating_system(HeatingSystem), complete_new_system(HeatingSystem, ExistingDwelling).
obligation_met(HeatingSystem) :- heating_system(HeatingSystem), whole_system_performance_assessed(HeatingSystem).
r1: violation <= existing_dwelling(ExistingDwelling), heating_system(HeatingSystem), complete_new_system(HeatingSystem, ExistingDwelling), not obligation_met(HeatingSystem).
