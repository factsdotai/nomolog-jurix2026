applies :- flat_storey(S).
r1: violation <= flat_storey(S), travel_distance(S, D), max_travel_distance(S, M), D > M.
flat_without_independent_alt_escape(S) :- flat_on_storey(F, S), not independent_alt_escape(F).
r2: exempt <= flat_storey(S), flat_on_storey(F, S), not flat_without_independent_alt_escape(S).
#conflict violation, exempt.
r2 > r1.
