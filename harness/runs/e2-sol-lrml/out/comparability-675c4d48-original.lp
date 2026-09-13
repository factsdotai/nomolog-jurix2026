% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6c781296e7f24c15
applies :- ventilation_equipment(VentilationEquipment), adequate_access_space(AdequateAccessSpace).
obligation_met(AdequateAccessSpace, VentilationEquipment) :- adequate_access_space(AdequateAccessSpace), ventilation_equipment(VentilationEquipment), available_for_maintenance_access(AdequateAccessSpace, VentilationEquipment).
r1: violation <= ventilation_equipment(VentilationEquipment), adequate_access_space(AdequateAccessSpace), not obligation_met(AdequateAccessSpace, VentilationEquipment).
