% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a6a8bd98c95b95d3
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- toilet_seat(ToiletSeat), side(Side), side_of(Side, ToiletSeat).
obligation_met(Side) :- side(Side), free_space(Side, SideFreeSpace), SideFreeSpace >= 800.
r1: violation <= toilet_seat(ToiletSeat), side(Side), side_of(Side, ToiletSeat), not obligation_met(Side).
