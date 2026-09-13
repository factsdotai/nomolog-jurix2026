% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 4b558d4a09b16f22
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- vent_system(s1), total_flow_unachievable(s1).
obligation_met :- fan_speed_increased(s1).
r1: violation <= vent_system(s1), total_flow_unachievable(s1), not obligation_met.
