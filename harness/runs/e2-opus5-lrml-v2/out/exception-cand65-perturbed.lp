% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 933dfc633501a57f
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- wheelchair_route(WheelchairRoute), unisex_toilet(UnisexToilet).
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), travel_distance(WheelchairRoute, WheelchairRouteTravelDistance), WheelchairRouteTravelDistance <= 40000.
r1: violation <= wheelchair_route(WheelchairRoute), unisex_toilet(UnisexToilet), not obligation_met(WheelchairRoute).
r2: exempt_r2 <= wheelchair_route(WheelchairRoute), greater_distance_agreed(WheelchairRoute).
#conflict violation, exempt_r2.
r2 > r1.
