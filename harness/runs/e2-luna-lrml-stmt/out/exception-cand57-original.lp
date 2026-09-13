% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1e849475bde96135
applies :- protected_stair(ProtectedStair), covered_car_park(CoveredCarPark).
r1: violation <= protected_stair(ProtectedStair), covered_car_park(CoveredCarPark), connects_to(ProtectedStair, CoveredCarPark), not neg_scope_1.
neg_scope_1 :- covered_car_park(CoveredCarPark), open_sided(CoveredCarPark).
