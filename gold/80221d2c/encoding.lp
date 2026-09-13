% <= 2 drainage wells per floor drain (bounded count via distinct variables);
% each within 3 metres (3000mm) of the floor drain.
applies :- floor_drain(F).
r1: violation <= floor_drain(F), connected(W1, F), connected(W2, F), connected(W3, F), W1 != W2, W1 != W3, W2 != W3.
r2: violation <= floor_drain(F), connected(W, F), drain_distance(W, F, D), D > 3000.
