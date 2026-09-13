% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 80fc8ed4106bfe91
applies :- protected_stair(ProtectedStair).
obligation_met :- not neg_scope_1.
obligation_met :- covered_car_park(CoveredCarPark), open_sided(CoveredCarPark).
r1: violation <= protected_stair(ProtectedStair), not obligation_met.
neg_scope_1 :- covered_car_park(CoveredCarPark), protected_stair(ProtectedStair), connects_to(ProtectedStair, CoveredCarPark).
