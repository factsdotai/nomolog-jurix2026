% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9ef6a6dc10f7b4a8
applies :- ventilation_valve(VentilationValve), natural_ventilation_system(NaturalVentilationSystem), part_of(VentilationValve, NaturalVentilationSystem).
obligation_met(VentilationValve) :- ventilation_valve(VentilationValve), easy_to_close(VentilationValve).
r1: violation <= ventilation_valve(VentilationValve), natural_ventilation_system(NaturalVentilationSystem), part_of(VentilationValve, NaturalVentilationSystem), not obligation_met(VentilationValve).
