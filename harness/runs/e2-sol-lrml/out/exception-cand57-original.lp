% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b4853c2f495e175e
applies :- protected_stair(s1), covered_car_park(p1), not neg_scope_1.
r1: violation <= protected_stair(s1), covered_car_park(p1), not neg_scope_1, connects_to(s1, p1).
neg_scope_1 :- open_sided(p1).
