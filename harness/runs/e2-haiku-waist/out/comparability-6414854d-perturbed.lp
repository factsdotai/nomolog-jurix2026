applies :- ladder(L).
r1: violation <= ladder(L), not safety_features_ok(L).
r2: exempt <= ladder(L), ladder_length(L, Len), Len <= 6000.
safety_features_ok(L) :- special_safety_features(L).
#conflict violation, exempt.
r2 > r1.
