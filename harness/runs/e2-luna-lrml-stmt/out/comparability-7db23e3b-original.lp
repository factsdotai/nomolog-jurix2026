% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 79bf4d35203a76ca
applies :- natural_vent_system(NaturalVentSystem), vent_valve(VentValve).
obligation_met(VentValve) :- vent_valve(VentValve), easy_to_close(VentValve).
r1: violation <= natural_vent_system(NaturalVentSystem), vent_valve(VentValve), not obligation_met(VentValve).
