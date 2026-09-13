% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f59a122906ab2200
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- ventilation_equipment(VentilationEquipment), adequate_access_space(VentilationEquipment).
obligation_met(VentilationEquipment) :- ventilation_equipment(VentilationEquipment), accessible_for_maintenance(VentilationEquipment).
r1: violation <= ventilation_equipment(VentilationEquipment), adequate_access_space(VentilationEquipment), not obligation_met(VentilationEquipment).
