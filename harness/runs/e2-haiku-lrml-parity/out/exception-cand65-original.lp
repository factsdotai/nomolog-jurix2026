% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c8c86796e1316615
% term-flattened: nested call -> constant travel_distance_wheelchair_user_unisex_t
applies :- wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet).
obligation_met(WheelchairUser) :- wheelchair_user(WheelchairUser), travel_distance_wheelchair_user_unisex_t <= 40000.
obligation_met(WheelchairUser) :- wheelchair_user(WheelchairUser), greater_distance_agreed(WheelchairUser), unobstructed(circulation_route).
r1: violation <= wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet), not obligation_met(WheelchairUser).
