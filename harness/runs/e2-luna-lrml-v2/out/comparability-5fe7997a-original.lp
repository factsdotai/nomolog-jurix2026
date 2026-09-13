% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 49e1bcd5a57904b7
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- vent_system(VentSystem), total_flow_unachievable(VentSystem).
obligation_met(VentSystem) :- vent_system(VentSystem), fan_speed_increased(VentSystem).
r1: violation <= vent_system(VentSystem), total_flow_unachievable(VentSystem), not obligation_met(VentSystem).
