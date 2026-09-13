% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ab98aebf73db39ec
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- natural_vent_system(ventilation_system), vent_valve(ventilation_valve, ventilation_system).
obligation_met :- easy_to_close(ventilation_valve).
r1: violation <= natural_vent_system(ventilation_system), vent_valve(ventilation_valve, ventilation_system), not obligation_met.
