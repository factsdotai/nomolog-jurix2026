% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a6a8bd98c95b95d3
applies :- toilet_seat(ToiletSeat), side(Side), side_of(Side, ToiletSeat).
obligation_met(Side) :- side(Side), free_space(Side, SideFreeSpace), SideFreeSpace >= 800.
r1: violation <= toilet_seat(ToiletSeat), side(Side), side_of(Side, ToiletSeat), not obligation_met(Side).
