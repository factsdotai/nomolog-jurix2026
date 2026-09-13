% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a370dcc33147747c
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant travel_distance_r1
% term-flattened: nested call -> constant circulation_route_r1
applies :- wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet), wheelchair_route(r1).
obligation_met :- travel_distance_r1 <= 40000.
r1: violation <= wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet), wheelchair_route(r1), not obligation_met.
r2: exempt_r2 <= wheelchair_route(r1), greater_distance_agreed(r1), unobstructed(circulation_route_r1).
#conflict violation, exempt_r2.
r2 > r1.
