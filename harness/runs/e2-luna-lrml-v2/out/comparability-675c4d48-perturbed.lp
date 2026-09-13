% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: af7f323ed8e00054
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- ventilation_equipment(VentilationEquipment).
obligation_met(VentilationEquipment) :- ventilation_equipment(VentilationEquipment), adequate_access_space(VentilationEquipment).
r1: violation <= ventilation_equipment(VentilationEquipment), not obligation_met(VentilationEquipment).
