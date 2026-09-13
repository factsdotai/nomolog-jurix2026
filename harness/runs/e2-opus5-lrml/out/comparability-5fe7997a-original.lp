% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c6ab8041fcafb528
applies :- vent_system(VentSystem), total_flow_unachievable(VentSystem).
obligation_met(VentSystem) :- vent_system(VentSystem), fan_speed_increased(VentSystem).
r1: violation <= vent_system(VentSystem), total_flow_unachievable(VentSystem), not obligation_met(VentSystem).
