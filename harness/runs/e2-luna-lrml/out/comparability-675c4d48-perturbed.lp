% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e511ed5021a986c2
applies :- ventilation_equipment(VentilationEquipment).
obligation_met(VentilationEquipment) :- ventilation_equipment(VentilationEquipment), adequate_access_space(VentilationEquipment).
r1: violation <= ventilation_equipment(VentilationEquipment), not obligation_met(VentilationEquipment).
