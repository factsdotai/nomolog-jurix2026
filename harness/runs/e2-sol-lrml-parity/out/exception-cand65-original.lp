% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 87a9de92dd15608f
applies :- wheelchair_route(route).
obligation_met :- travel_distance(route, distance), distance <= 40000.
obligation_met :- greater_distance_agreed(route).
r1: violation <= wheelchair_route(route), not obligation_met.
