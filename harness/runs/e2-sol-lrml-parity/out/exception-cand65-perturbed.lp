% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5b7b82cbf9319ea1
% term-flattened: nested call -> constant travel_distance_route
applies :- wheelchair_route(route).
obligation_met :- travel_distance_route <= 40000.
obligation_met :- greater_distance_agreed(route).
r1: violation <= wheelchair_route(route), not obligation_met.
