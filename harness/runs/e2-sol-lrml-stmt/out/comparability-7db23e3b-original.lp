% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 934b2e48d02d1b40
applies :- natural_vent_system(NaturalVentSystem), vent_valve(VentValve), vent_valve(VentValve, NaturalVentSystem).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= natural_vent_system(NaturalVentSystem), vent_valve(VentValve), vent_valve(VentValve, NaturalVentSystem), not obligation_met(VentValve).
