% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7d6d0343d48e5f59
applies :- protected_stair(stair), covered_car_park(car_park).
r1: violation <= protected_stair(stair), covered_car_park(car_park), connects_to(stair, car_park), not neg_scope_1.
neg_scope_1 :- open_sided(car_park).
