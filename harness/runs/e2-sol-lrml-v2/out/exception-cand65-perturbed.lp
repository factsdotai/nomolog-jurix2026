% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 78f22a734de647cd
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- wheelchair_route(route), travel_distance(route, distance).
obligation_met :- distance <= 40000.
r1: violation <= wheelchair_route(route), travel_distance(route, distance), not obligation_met.
r2: exempt_r2 <= wheelchair_route(route), travel_distance(route, distance), greater_distance_agreed(route).
#conflict violation, exempt_r2.
r2 > r1.
