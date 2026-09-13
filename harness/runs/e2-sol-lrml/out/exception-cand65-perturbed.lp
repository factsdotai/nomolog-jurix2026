% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bbe569164884f1c9
applies :- wheelchair_route(route), travel_distance(route, distance), not neg_scope_1.
obligation_met :- distance <= 40000.
r1: violation <= wheelchair_route(route), travel_distance(route, distance), not neg_scope_1, not obligation_met.
neg_scope_1 :- greater_distance_agreed(route).
