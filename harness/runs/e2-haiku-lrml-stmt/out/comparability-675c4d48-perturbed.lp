% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 26715a938e66c993
applies :- ventilation_equipment(VentilationEquipment), adequate_access_space(AdequateAccessSpace).
obligation_met(AdequateAccessSpace) :- adequate_access_space(AdequateAccessSpace), available_for_maintenance(AdequateAccessSpace).
r1: violation <= ventilation_equipment(VentilationEquipment), adequate_access_space(AdequateAccessSpace), not obligation_met(AdequateAccessSpace).
