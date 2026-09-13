% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ae628eb5616cfac0
applies :- existing_dwelling(ExistingDwelling), complete_new_system(CompleteNewSystem), part_of(CompleteNewSystem, ExistingDwelling).
obligation_met(CompleteNewSystem) :- complete_new_system(CompleteNewSystem), whole_system_performance_assessed(CompleteNewSystem).
r1: violation <= existing_dwelling(ExistingDwelling), complete_new_system(CompleteNewSystem), part_of(CompleteNewSystem, ExistingDwelling), not obligation_met(CompleteNewSystem).
