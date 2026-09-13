% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 5390019acf0ebe49
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- natural_vent_system(s1), vent_valve(v1, s1).
obligation_met :- easy_to_close(v1).
r1: violation <= natural_vent_system(s1), vent_valve(v1, s1), not obligation_met.
