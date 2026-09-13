applies :- flat_on_storey(F, S), flat_storey(S), max_travel_distance(S, M), not independent_alt_escape(F).
r1: violation <= flat_on_storey(F, S), flat_storey(S), max_travel_distance(S, M), travel_distance(S, D), not independent_alt_escape(F), D > M.
