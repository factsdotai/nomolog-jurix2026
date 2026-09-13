% "on one side of the toilet seat there shall be a free space of at least 800 mm"
% existential over sides: some side must offer >= 800 (mm, normalized per spec §3)

applies :- toilet_seat(T).

r1: violation <= toilet_seat(T), not side_ok(T).

side_ok(T) :- side_of(S, T), free_space(S, D), D >= 800.
