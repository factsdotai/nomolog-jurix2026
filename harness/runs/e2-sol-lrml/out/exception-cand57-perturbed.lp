% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 07fb3aa5011d460e
applies :- protected_stair(stair), covered_car_park(car_park), not neg_scope_1.
r1: violation <= protected_stair(stair), covered_car_park(car_park), not neg_scope_1, connects_to(stair, car_park).
neg_scope_1 :- open_sided(car_park).
