% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 7a1e63b43943c210
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant travel_distance_wheelchair_user_unisex_t
applies :- wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet).
obligation_met :- travel_distance_wheelchair_user_unisex_t <= 40000.
r1: violation <= wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet), not obligation_met.
r2: exempt_r2 <= wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet), greater_distance_agreed(WheelchairUser).
#conflict violation, exempt_r2.
r2 > r1.
