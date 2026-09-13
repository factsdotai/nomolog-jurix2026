% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8e7c5f4612ceeb38
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- toilet_seat(ToiletSeat), free_space(FreeSpace).
obligation_met(FreeSpace) :- free_space(FreeSpace), width(FreeSpace, FreeSpaceWidth), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(ToiletSeat), free_space(FreeSpace), not obligation_met(FreeSpace).
