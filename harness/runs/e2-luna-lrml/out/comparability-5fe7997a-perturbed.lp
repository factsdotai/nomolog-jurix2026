% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9f17f8eb238d1c72
applies :- total_flow_unachievable(vent_system).
obligation_met :- fan_speed_increased(vent_system).
r1: violation <= total_flow_unachievable(vent_system), not obligation_met.
