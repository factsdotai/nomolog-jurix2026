% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fb3fcc32328d20d3
applies :- natural_vent_system(NaturalVentSystem), vent_valve(VentValve), part_of(VentValve, NaturalVentSystem).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= natural_vent_system(NaturalVentSystem), vent_valve(VentValve), part_of(VentValve, NaturalVentSystem), not obligation_met(VentValve).
