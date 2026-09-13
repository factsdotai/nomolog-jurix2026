% bounded counting for the "no more than two" cap + a distance limit
applies :- floor_drain(F), sink(W), connected(W, F).
r1: violation <= floor_drain(F), sink(W1), sink(W2), sink(W3), connected(W1, F), connected(W2, F), connected(W3, F), W1 != W2, W1 != W3, W2 != W3.
r2: violation <= floor_drain(F), sink(W), connected(W, F), drain_distance(W, F, D), D > 3000.
