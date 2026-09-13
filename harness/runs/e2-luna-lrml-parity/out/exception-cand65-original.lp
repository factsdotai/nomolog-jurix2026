% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 48e9ee0c492659df
% term-flattened: nested call -> constant travel_distance_wheelchair_route_40_m
applies :- wheelchair_route(WheelchairRoute).
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), travel_distance_wheelchair_route_40_m <= 0.
obligation_met(WheelchairRoute) :- wheelchair_route(WheelchairRoute), greater_distance_agreed(WheelchairRoute).
r1: violation <= wheelchair_route(WheelchairRoute), not obligation_met(WheelchairRoute).
