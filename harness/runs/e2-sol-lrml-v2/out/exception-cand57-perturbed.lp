% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8194221e6a3c7b64
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- protected_stair(stair), covered_car_park(car_park).
r1: violation <= protected_stair(stair), covered_car_park(car_park), connects_to(stair, car_park).
r2: exempt_r2 <= protected_stair(stair), covered_car_park(car_park), open_sided(car_park).
#conflict violation, exempt_r2.
r2 > r1.
