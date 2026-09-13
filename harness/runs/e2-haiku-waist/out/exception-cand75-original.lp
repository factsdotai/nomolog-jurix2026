applies :- flat_on_storey(F, S), max_travel_distance(S, M).
r1: violation <= flat_on_storey(F, S), max_travel_distance(S, M), travel_distance(S, D), D > M.
r2: exempt <= flat_storey(S), independent_alt_escape(F1), independent_alt_escape(F2), flat_on_storey(F1, S), flat_on_storey(F2, S), F1 != F2.
#conflict violation, exempt.
r2 > r1.
