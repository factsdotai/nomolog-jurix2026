% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d503f3b36ba59c67
applies :- vent_valve(v, s), natural_vent_system(s).
obligation_met :- easy_to_close(v).
r1: violation <= vent_valve(v, s), natural_vent_system(s), not obligation_met.
