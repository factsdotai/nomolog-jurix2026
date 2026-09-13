% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4177d7dc4285bac2
applies :- wheelchair_route(route), travel_distance(route, distance).
obligation_met :- distance <= 40000.
obligation_met :- greater_distance_agreed(route).
r1: violation <= wheelchair_route(route), travel_distance(route, distance), not obligation_met.
