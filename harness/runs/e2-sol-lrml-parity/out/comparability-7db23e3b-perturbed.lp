% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4ac6bd4f08fe3583
applies :- vent_valve(VentValve), natural_vent_system(NaturalVentSystem), vent_valve(VentValve, NaturalVentSystem).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= vent_valve(VentValve), natural_vent_system(NaturalVentSystem), vent_valve(VentValve, NaturalVentSystem), not obligation_met(VentValve).
