% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6022f0aaafa636b4
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- protected_stair(ProtectedStair), covered_car_park(CoveredCarPark).
r1: violation <= protected_stair(ProtectedStair), covered_car_park(CoveredCarPark), connects_to(ProtectedStair, CoveredCarPark).
r2: exempt_r2 <= protected_stair(ProtectedStair), covered_car_park(CoveredCarPark), open_sided(CoveredCarPark).
#conflict violation, exempt_r2.
r2 > r1.
