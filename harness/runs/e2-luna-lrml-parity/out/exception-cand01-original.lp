% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0daf2bdd62df198f
applies :- cavity(Cavity).
obligation_met(Cavity) :- cavity(Cavity), surface_class_ok(Cavity).
obligation_met(Cavity) :- cavity(Cavity), fire_resisting_only_loadbearing(Cavity).
obligation_met(Cavity) :- cavity(Cavity), meets_diagram_9_2(Cavity).
obligation_met(Cavity) :- cavity(Cavity), above_fire_resisting_ceiling(Cavity).
obligation_met(Cavity) :- cavity(Cavity), solid_wall(Cavity).
r1: violation <= cavity(Cavity), not obligation_met(Cavity).
