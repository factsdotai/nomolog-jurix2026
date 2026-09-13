% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a70b644badcff1cf
applies :- vent_system(x), total_flow_unachievable(x).
obligation_met :- fan_speed_increased(x).
r1: violation <= vent_system(x), total_flow_unachievable(x), not obligation_met.
