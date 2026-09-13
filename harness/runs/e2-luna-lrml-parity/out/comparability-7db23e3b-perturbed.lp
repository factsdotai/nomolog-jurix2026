% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4c51021f394fe669
applies :- natural_ventilation_system(NaturalVentilationSystem), ventilation_valve(VentilationValve), part_of(VentilationValve, NaturalVentilationSystem).
obligation_met(VentilationValve) :- ventilation_valve(VentilationValve), easy_to_close(VentilationValve).
r1: violation <= natural_ventilation_system(NaturalVentilationSystem), ventilation_valve(VentilationValve), part_of(VentilationValve, NaturalVentilationSystem), not obligation_met(VentilationValve).
