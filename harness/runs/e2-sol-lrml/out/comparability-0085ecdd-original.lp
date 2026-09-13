% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 320cdee24bdf6aa7
applies :- toilet_seat(ts).
obligation_met :- s(S), free_space(S, w), side_of(S, ts), w >= 800.
r1: violation <= toilet_seat(ts), not obligation_met.
