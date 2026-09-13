applies :- toilet_seat(T).
r1: violation <= toilet_seat(T), not side_space_ok(T).
side_space_ok(T) :- side_of(S, T), free_space(S, W), W >= 800.
