% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2b4e5b1d93c91b35
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- stair(Stair), covered_car_park(car_park), connects_to(Stair, car_park).
r1: violation <= stair(Stair), covered_car_park(car_park), connects_to(Stair, car_park).
r2: exempt_r2 <= stair(Stair), covered_car_park(car_park), connects_to(Stair, car_park), open_sided(car_park).
#conflict violation, exempt_r2.
r2 > r1.
