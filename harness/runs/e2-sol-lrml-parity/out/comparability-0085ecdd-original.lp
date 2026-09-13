% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: da4fb8125eb02e6a
applies :- toilet_seat(t).
obligation_met :- s(S), free_space(S, w), side_of(S, t), w >= 800.
r1: violation <= toilet_seat(t), not obligation_met.
