% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e8d63d3e5782ad5d
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- ventilation_valve(VentilationValve), natural_vent_system(ventilation_system), vent_valve(VentilationValve, ventilation_system).
obligation_met(VentilationValve) :- ventilation_valve(VentilationValve), easy_to_close(VentilationValve).
r1: violation <= ventilation_valve(VentilationValve), natural_vent_system(ventilation_system), vent_valve(VentilationValve, ventilation_system), not obligation_met(VentilationValve).
