% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 70557439592c799a
applies :- total_flow_unachievable(vent_system).
obligation_met :- fan_speed_increased(vent_system).
r1: violation <= total_flow_unachievable(vent_system), not obligation_met.
