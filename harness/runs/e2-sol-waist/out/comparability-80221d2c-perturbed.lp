applies :- floor_drain(F).
r1: violation <= floor_drain(F), sink(S1), sink(S2), sink(S3), connected(S1, F), connected(S2, F), connected(S3, F), S1 != S2, S1 != S3, S2 != S3.
r2: violation <= floor_drain(F), sink(S), connected(S, F), drain_distance(S, F, D), D > 3000.
