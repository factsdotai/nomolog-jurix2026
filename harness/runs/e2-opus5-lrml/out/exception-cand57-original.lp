% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 18aefee8fb0da9e4
applies :- protected_stair(ProtectedStair), covered_car_park(CoveredCarPark), connects_to(ProtectedStair, CoveredCarPark).
obligation_met(CoveredCarPark) :- covered_car_park(CoveredCarPark), open_sided(CoveredCarPark).
r1: violation <= protected_stair(ProtectedStair), covered_car_park(CoveredCarPark), connects_to(ProtectedStair, CoveredCarPark), not obligation_met(CoveredCarPark).
