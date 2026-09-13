applies :- toilet_seat(T).
r1: violation <= toilet_seat(T), not side_free_space_ok(T).
side_free_space_ok(T) :- toilet_seat(T), free_space(S, W), side_of(S, T), W >= 800.
