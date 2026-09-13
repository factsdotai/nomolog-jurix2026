% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 750e3bbf25b48fb8
applies :- natural_vent_system(s1), vent_valve(v1, s1).
obligation_met :- easy_to_close(v1).
r1: violation <= natural_vent_system(s1), vent_valve(v1, s1), not obligation_met.
