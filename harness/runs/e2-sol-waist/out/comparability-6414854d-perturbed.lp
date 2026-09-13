applies :- ladder(L).
r1: violation <= ladder(L), not special_safety_features(L).
r2: exempt <= ladder(L), ladder_length(L, N), N <= 6000.
#conflict violation, exempt.
r2 > r1.
