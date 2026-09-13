% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 9589bb52f73688b6
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- toilet_seat(ToiletSeat), free_space(FreeSpace), side_of(FreeSpace, ToiletSeat).
obligation_met(FreeSpace) :- free_space(FreeSpace), width(FreeSpace, FreeSpaceWidth), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(ToiletSeat), free_space(FreeSpace), side_of(FreeSpace, ToiletSeat), not obligation_met(FreeSpace).
