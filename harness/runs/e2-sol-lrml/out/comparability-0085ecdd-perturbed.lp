% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4f8ec540f0a2f67e
applies :- toilet_seat(ts).
obligation_met :- fs(Fs), free_space(Fs, w), side_of(Fs, ts), w >= 800.
r1: violation <= toilet_seat(ts), not obligation_met.
