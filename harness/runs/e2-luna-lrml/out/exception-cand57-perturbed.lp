% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: eacd69745125adf3
applies :- stair(Stair).
r1: violation <= stair(Stair), connects_to(Stair, covered_car_park), not neg_scope_1.
neg_scope_1 :- open_sided(covered_car_park).
