applies :- toilet_seat(Ts).
r1: violation <= toilet_seat(Ts), not space_ok(Ts).
space_ok(Ts) :- side_of(S, Ts), free_space(S, W), W >= 800.
