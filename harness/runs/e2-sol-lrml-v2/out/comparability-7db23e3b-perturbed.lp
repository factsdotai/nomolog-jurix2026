% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 392d74280ccfdcbe
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- vent_valve(VentValve), vent_valve(VentValve, ventilation_system), natural_vent_system(ventilation_system).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= vent_valve(VentValve), vent_valve(VentValve, ventilation_system), natural_vent_system(ventilation_system), not obligation_met(VentValve).
