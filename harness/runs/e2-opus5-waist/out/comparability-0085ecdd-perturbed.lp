% existential: at least one side must have the required free space
applies :- toilet_seat(Ts).
r1: violation <= toilet_seat(Ts), not free_space_ok(Ts).
free_space_ok(Ts) :- side_of(S, Ts), free_space(S, W), W >= 800.
