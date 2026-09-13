% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0d5013400919c334
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- stair(Stair).
r1: violation <= stair(Stair), connects_to(Stair, covered_car_park).
r2: exempt_r2 <= stair(Stair), exists(covered_car_park), open_sided(covered_car_park).
#conflict violation, exempt_r2.
r2 > r1.
