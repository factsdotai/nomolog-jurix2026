% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ee01087baf3330c2
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- toilet_seat(ToiletSeat), side_of_toilet_seat(SideOfToiletSeat).
obligation_met(SideOfToiletSeat) :- side_of_toilet_seat(SideOfToiletSeat), free_space(SideOfToiletSeat, SideOfToiletSeatFreeSpace), SideOfToiletSeatFreeSpace >= 800.
r1: violation <= toilet_seat(ToiletSeat), side_of_toilet_seat(SideOfToiletSeat), not obligation_met(SideOfToiletSeat).
