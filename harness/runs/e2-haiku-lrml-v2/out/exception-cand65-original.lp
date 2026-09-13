% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b93da2fd2ec58004
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- wheelchair_user(WheelchairUser).
obligation_met(WheelchairUser) :- wheelchair_user(WheelchairUser), travel_distance_to_unisex_toilet(WheelchairUser, WheelchairUserTravelDistanceToUnisexToilet), WheelchairUserTravelDistanceToUnisexToilet <= 40000.
r1: violation <= wheelchair_user(WheelchairUser), not obligation_met(WheelchairUser).
r2: exempt_r2 <= wheelchair_user(WheelchairUser), greater_distance_agreed(WheelchairUser).
#conflict violation, exempt_r2.
r2 > r1.
