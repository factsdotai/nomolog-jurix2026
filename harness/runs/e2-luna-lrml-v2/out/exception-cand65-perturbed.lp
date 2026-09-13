% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 46a50651cbf679ff
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- wheelchair_route(r1).
obligation_met :- r1_travel_distance <= 40000.
r1: violation <= wheelchair_route(r1), not obligation_met.
r2: exempt_r2 <= wheelchair_route(r1), greater_distance_agreed(r1), service_corridor(r1).
#conflict violation, exempt_r2.
r2 > r1.
