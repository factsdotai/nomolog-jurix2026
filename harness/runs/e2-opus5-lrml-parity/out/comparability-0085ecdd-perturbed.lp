% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8ed5799273bce4b1
% term-flattened: nested call -> constant side_of_toilet_seat
applies :- toilet_seat(ToiletSeat), side_of(ToiletSeat).
obligation_met :- side_of_toilet_seat >= free_space.
r1: violation <= toilet_seat(ToiletSeat), side_of(ToiletSeat), not obligation_met.
