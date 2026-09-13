% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f8d5feffb4cf9977
applies :- toilet_seat(ToiletSeat), free_space(FreeSpace), side_of(FreeSpace, ToiletSeat).
obligation_met(FreeSpace) :- free_space(FreeSpace), width(FreeSpace, FreeSpaceWidth), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(ToiletSeat), free_space(FreeSpace), side_of(FreeSpace, ToiletSeat), not obligation_met(FreeSpace).
