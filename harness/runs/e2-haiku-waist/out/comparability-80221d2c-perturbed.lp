applies :- floor_drain(F).
r1: violation <= floor_drain(F), connected(W1, F), connected(W2, F), connected(W3, F), W1 != W2, W1 != W3, W2 != W3.
r2: violation <= floor_drain(F), connected(W, F), drain_distance(W, F, D), D > 3000.
