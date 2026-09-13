% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ee01087baf3330c2
applies :- toilet_seat(ToiletSeat), side_of_toilet_seat(SideOfToiletSeat).
obligation_met(SideOfToiletSeat) :- side_of_toilet_seat(SideOfToiletSeat), free_space(SideOfToiletSeat, SideOfToiletSeatFreeSpace), SideOfToiletSeatFreeSpace >= 800.
r1: violation <= toilet_seat(ToiletSeat), side_of_toilet_seat(SideOfToiletSeat), not obligation_met(SideOfToiletSeat).
