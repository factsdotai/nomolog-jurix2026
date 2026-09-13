% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 53ea07c39c648c6a
applies :- toilet_seat(ToiletSeat), free_space(FreeSpace).
obligation_met(FreeSpace, ToiletSeat) :- free_space(FreeSpace), toilet_seat(ToiletSeat), side_of(FreeSpace, ToiletSeat), width(FreeSpace, FreeSpaceWidth), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(ToiletSeat), free_space(FreeSpace), not obligation_met(FreeSpace, ToiletSeat).
