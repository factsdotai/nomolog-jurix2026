% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 79cf3891336ef418
applies :- cavity(Cavity).
obligation_met(Cavity) :- cavity(Cavity), surface_class_ok(Cavity).
obligation_met(Cavity) :- cavity(Cavity), fire_resisting_only_loadbearing(Cavity).
obligation_met(Cavity) :- cavity(Cavity), meets_diagram_9_2(Cavity).
obligation_met(Cavity) :- cavity(Cavity), above_fire_resisting_ceiling(Cavity).
r1: violation <= cavity(Cavity), not obligation_met(Cavity).
