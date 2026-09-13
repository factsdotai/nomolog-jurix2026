% exception as superior defeasible rule; the 1800mm proximity is captured
% by element_near_route/2
applies :- external_escape_stair(S), element_near_route(E, S).
r1: violation <= external_escape_stair(S), element_near_route(E, S), not fire_resisting_re30(E).
r2: exempt <= external_escape_stair(S), alternative_escape_routes_from_foot(S).
#conflict violation, exempt.
r2 > r1.
