% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 77a7e9b25ca2db17
applies :- existing_dwelling(ExistingDwelling), complete_new_system(CompleteNewSystem).
obligation_met(CompleteNewSystem) :- complete_new_system(CompleteNewSystem), whole_system_performance_assessed(CompleteNewSystem).
r1: violation <= existing_dwelling(ExistingDwelling), complete_new_system(CompleteNewSystem), not obligation_met(CompleteNewSystem).
