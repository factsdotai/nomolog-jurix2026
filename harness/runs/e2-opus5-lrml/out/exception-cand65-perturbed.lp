% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a66b6820352399c6
applies :- wheelchair_route(WheelchairRoute), not neg_scope_1.
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), travel_distance(WheelchairRoute, WheelchairRouteTravelDistance), WheelchairRouteTravelDistance <= 40000.
r1: violation <= wheelchair_route(WheelchairRoute), not neg_scope_1, not obligation_met(WheelchairRoute).
neg_scope_1 :- wheelchair_route(WheelchairRoute), greater_distance_agreed(WheelchairRoute).
