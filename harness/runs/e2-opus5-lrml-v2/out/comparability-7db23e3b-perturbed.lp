% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: cf0b7bcb9346b13d
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- ventilation_system(VentilationSystem), natural(VentilationSystem), ventilation_valve(VentilationValve), part_of(VentilationValve, VentilationSystem).
obligation_met(VentilationValve) :- ventilation_valve(VentilationValve), easy_to_close(VentilationValve).
r1: violation <= ventilation_system(VentilationSystem), natural(VentilationSystem), ventilation_valve(VentilationValve), part_of(VentilationValve, VentilationSystem), not obligation_met(VentilationValve).
