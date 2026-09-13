% Scope-defeat: "does not apply if there are alternative escape routes" cancels the
% provision, so the carve-out defeats applies as well as violation (as in cand75).
r2: applies <= external_escape_stair(S).
r1: violation <= external_escape_stair(S), element_near_route(E, S), not fire_resisting_re30(E).
r3: out_of_scope <= external_escape_stair(S), alternative_escape_routes_from_foot(S).
#conflict applies, out_of_scope.
#conflict violation, out_of_scope.
r3 > r2.
r3 > r1.
