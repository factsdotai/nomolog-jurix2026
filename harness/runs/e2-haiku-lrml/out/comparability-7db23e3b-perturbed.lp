% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c321075a62c705c9
applies :- natural_vent_system(NaturalVentSystem), vent_valve(VentValve).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= natural_vent_system(NaturalVentSystem), vent_valve(VentValve), not obligation_met(VentValve).
