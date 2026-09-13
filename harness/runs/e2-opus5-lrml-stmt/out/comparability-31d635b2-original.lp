% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d9628ad52541a9e4
applies :- existing_dwelling(ExistingDwelling), complete_new_system(ExistingDwelling, heating_system).
obligation_met :- whole_system_performance_assessed(heating_system).
r1: violation <= existing_dwelling(ExistingDwelling), complete_new_system(ExistingDwelling, heating_system), not obligation_met.
