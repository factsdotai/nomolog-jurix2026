% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 10a3450a676b318f
applies :- protected_stair(ProtectedStair), connects_to(ProtectedStair, covered_car_park), not neg_scope_1.
r1: violation <= protected_stair(ProtectedStair), connects_to(ProtectedStair, covered_car_park), not neg_scope_1.
neg_scope_1 :- open_sided(covered_car_park).
