applies :- toilet_seat(T).
r1: violation <= toilet_seat(T), not side_free_space_ok(T).
side_free_space_ok(T) :- toilet_seat(T), side_of(S, T), free_space(S, W), W >= 800.
