% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c321075a62c705c9
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- natural_vent_system(NaturalVentSystem), vent_valve(VentValve).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= natural_vent_system(NaturalVentSystem), vent_valve(VentValve), not obligation_met(VentValve).
