% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 54e1f7edd97829c6
applies :- wheelchair_route(WheelchairRoute), not neg_scope_1.
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), travel_distance(WheelchairRoute, WheelchairRouteTravelDistance), WheelchairRouteTravelDistance <= 40000.
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), greater_distance_agreed(WheelchairRoute).
r1: violation <= wheelchair_route(WheelchairRoute), not neg_scope_1, not obligation_met(WheelchairRoute).
neg_scope_1 :- wheelchair_route(WheelchairRoute), service_corridor(WheelchairRoute).
