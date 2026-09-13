% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a8f45cf305f68253
applies :- protected_stair(ProtectedStair).
r1: violation <= protected_stair(ProtectedStair), connects_to(ProtectedStair, covered_car_park), covered_car_park(covered_car_park), not neg_scope_1.
neg_scope_1 :- open_sided(covered_car_park).
