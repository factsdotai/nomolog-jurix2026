% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 08a5dde1b714c450
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- ventilation_system(VentilationSystem), natural_vent_system(VentilationSystem), vent_valve(VentValve), part_of(VentValve, VentilationSystem).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= ventilation_system(VentilationSystem), natural_vent_system(VentilationSystem), vent_valve(VentValve), part_of(VentValve, VentilationSystem), not obligation_met(VentValve).
