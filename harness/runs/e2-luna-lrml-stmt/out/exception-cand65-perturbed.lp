% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d61b00bb9980154a
% term-flattened: nested call -> constant travel_distance_wheelchair_route
applies :- wheelchair_route(WheelchairRoute).
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), travel_distance_wheelchair_route <= 40000.
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), greater_distance_agreed(WheelchairRoute), service_corridor(WheelchairRoute).
r1: violation <= wheelchair_route(WheelchairRoute), not obligation_met(WheelchairRoute).
