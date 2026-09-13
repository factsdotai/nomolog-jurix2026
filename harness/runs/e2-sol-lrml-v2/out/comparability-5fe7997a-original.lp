% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: cbd6fa656569e316
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- vent_system(system), total_flow_unachievable(system).
obligation_met :- fan_speed_increased(system).
r1: violation <= vent_system(system), total_flow_unachievable(system), not obligation_met.
