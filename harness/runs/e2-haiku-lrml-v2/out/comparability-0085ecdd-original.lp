% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ae8e1d16d4f2c4f6
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- toilet_seat(ToiletSeat), free_space(FreeSpace).
obligation_met(FreeSpace, ToiletSeat) :- free_space(FreeSpace), toilet_seat(ToiletSeat), side_of(FreeSpace, ToiletSeat), FreeSpace >= 800.
r1: violation <= toilet_seat(ToiletSeat), free_space(FreeSpace), not obligation_met(FreeSpace, ToiletSeat).
