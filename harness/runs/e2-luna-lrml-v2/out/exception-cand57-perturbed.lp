% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0c94b669de3337a3
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- stair(Stair), covered_car_park(CoveredCarPark), connects_to(Stair, CoveredCarPark).
r1: violation <= stair(Stair), covered_car_park(CoveredCarPark), connects_to(Stair, CoveredCarPark).
r2: exempt_r2 <= stair(Stair), covered_car_park(CoveredCarPark), connects_to(Stair, CoveredCarPark), open_sided(CoveredCarPark).
#conflict violation, exempt_r2.
r2 > r1.
