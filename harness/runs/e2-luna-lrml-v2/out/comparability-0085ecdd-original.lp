% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e33e43a074f0852c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- toilet_seat(ToiletSeat), free_space(FreeSpace), side_of(FreeSpace, ToiletSeat).
obligation_met(FreeSpace) :- free_space(FreeSpace), width(FreeSpace, FreeSpaceWidth), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(ToiletSeat), free_space(FreeSpace), side_of(FreeSpace, ToiletSeat), not obligation_met(FreeSpace).
