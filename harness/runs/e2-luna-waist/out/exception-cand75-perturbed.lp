applies :- flat_on_storey(F, S), flat_storey(S), max_travel_distance(S, M), travel_distance(S, D).
r1: violation <= flat_on_storey(F, S), flat_storey(S), max_travel_distance(S, M), travel_distance(S, D), D > M.
r2: exempt <= flat_storey(S), flat_on_storey(F, S), independent_alt_escape(F).
#conflict violation, exempt.
r2 > r1.
