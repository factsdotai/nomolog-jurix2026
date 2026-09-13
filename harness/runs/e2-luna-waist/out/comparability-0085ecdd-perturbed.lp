applies :- toilet_seat(T).
r1: violation <= toilet_seat(T), not side_clearance_ok(T).
side_clearance_ok(T) :- free_space(S, W), side_of(S, T), W >= 800.
