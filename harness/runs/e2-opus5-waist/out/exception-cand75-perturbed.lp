% universal "all flats" via negation of a counterexample
applies :- flat_storey(S).
flat_lacking_escape(S) :- flat_on_storey(F, S), not independent_alt_escape(F).
r1: violation <= flat_storey(S), travel_distance(S, D), max_travel_distance(S, M), D > M.
r2: exempt <= flat_storey(S), not flat_lacking_escape(S).
#conflict violation, exempt.
r2 > r1.
