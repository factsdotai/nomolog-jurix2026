% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 975043632880e714
% term-flattened: nested call -> constant travel_distance_wheelchair_user_unisex_t
applies :- wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet), not neg_scope_1.
obligation_met :- travel_distance_wheelchair_user_unisex_t <= 40000.
r1: violation <= wheelchair_user(WheelchairUser), unisex_toilet(UnisexToilet), not neg_scope_1, not obligation_met.
neg_scope_1 :- wheelchair_user(WheelchairUser), greater_distance_agreed(WheelchairUser).
