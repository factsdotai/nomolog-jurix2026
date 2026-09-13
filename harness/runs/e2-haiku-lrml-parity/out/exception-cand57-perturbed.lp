% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c40a79860e37f6a4
applies :- protected_stair(ProtectedStair), connects_to(ProtectedStair, covered_car_park).
obligation_met :- open_sided(covered_car_park).
obligation_met :- not neg_scope_1.
r1: violation <= protected_stair(ProtectedStair), connects_to(ProtectedStair, covered_car_park), not obligation_met.
neg_scope_1 :- protected_stair(ProtectedStair), connects_to(ProtectedStair, covered_car_park).
