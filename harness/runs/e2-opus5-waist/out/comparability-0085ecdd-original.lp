applies :- toilet_seat(Ts).
r1: violation <= toilet_seat(Ts), not side_space_ok(Ts).
side_space_ok(Ts) :- side_of(S, Ts), free_space(S, W), W >= 800.
