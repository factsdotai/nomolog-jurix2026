% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6f650324b8169868
applies :- protected_stair(ProtectedStair), covered_car_park(CoveredCarPark).
obligation_met(CoveredCarPark) :- covered_car_park(CoveredCarPark), not neg_scope_1.
obligation_met(CoveredCarPark) :- covered_car_park(CoveredCarPark), open_sided(CoveredCarPark).
r1: violation <= protected_stair(ProtectedStair), covered_car_park(CoveredCarPark), not obligation_met(CoveredCarPark).
neg_scope_1 :- protected_stair(ProtectedStair), covered_car_park(CoveredCarPark), connects_to(ProtectedStair, CoveredCarPark).
