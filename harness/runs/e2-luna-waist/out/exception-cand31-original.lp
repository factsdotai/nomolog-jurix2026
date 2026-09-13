applies :- external_escape_stair(S), element_near_route(E, S).

r1: violation <= external_escape_stair(S), element_near_route(E, S), not fire_resisting_re30(E).
r2: exempt <= external_escape_stair(S), element_near_route(E, S), alternative_escape_routes_from_foot(S).

#conflict violation, exempt.
r2 > r1.
