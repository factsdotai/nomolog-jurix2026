% Scope-defeat with a universal condition: the carve-out holds only if NO flat lacks
% an alternative escape (negated-exists inside the superior rule's body).
r2: applies <= flat_storey(S).
r1: violation <= flat_storey(S), travel_distance(S, D), max_travel_distance(S, M), D > M.
r3: out_of_scope <= flat_storey(S), not some_flat_without_alt(S).
some_flat_without_alt(S) :- flat_on_storey(F, S), not independent_alt_escape(F).
#conflict applies, out_of_scope.
#conflict violation, out_of_scope.
r3 > r2.
r3 > r1.
