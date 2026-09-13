% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f51e6787238eaf5d
applies :- toilet_seat(ToiletSeat), free_space(FreeSpace).
obligation_met(FreeSpace) :- free_space(FreeSpace), width(FreeSpace, FreeSpaceWidth), FreeSpaceWidth >= 800.
r1: violation <= toilet_seat(ToiletSeat), free_space(FreeSpace), not obligation_met(FreeSpace).
