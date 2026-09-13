% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 07fb3aa5011d460e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- protected_stair(stair), covered_car_park(car_park), not neg_scope_1.
r1: violation <= protected_stair(stair), covered_car_park(car_park), not neg_scope_1, connects_to(stair, car_park).
neg_scope_1 :- open_sided(car_park).
