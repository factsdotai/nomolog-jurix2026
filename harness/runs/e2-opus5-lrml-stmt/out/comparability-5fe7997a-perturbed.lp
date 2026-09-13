% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a41783a1d44679ca
applies :- vent_system(VentSystem).
obligation_met(VentSystem) :- vent_system(VentSystem), not neg_scope_1.
obligation_met(VentSystem) :- vent_system(VentSystem), fan_speed_increased(VentSystem).
r1: violation <= vent_system(VentSystem), not obligation_met(VentSystem).
neg_scope_1 :- vent_system(VentSystem), total_flow_unachievable(VentSystem).
