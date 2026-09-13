% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5f378fe0d8fb3065
applies :- vent_system(s1), total_flow_unachievable(s1).
obligation_met :- fan_speed_increased(s1).
r1: violation <= vent_system(s1), total_flow_unachievable(s1), not obligation_met.
