% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cdc765695277a67e
applies :- toilet_seat(ToiletSeat).
obligation_met(ToiletSeat) :- free_space(FreeSpace), toilet_seat(ToiletSeat), side_of(FreeSpace, ToiletSeat), width(FreeSpace, FreeSpaceWidth), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(ToiletSeat), not obligation_met(ToiletSeat).
