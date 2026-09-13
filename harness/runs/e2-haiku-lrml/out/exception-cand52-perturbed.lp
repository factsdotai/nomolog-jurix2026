% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d15f978b310772e3
applies :- lift(Lift), fire_in_building(building), not neg_scope_1.
r1: violation <= lift(Lift), fire_in_building(building), not neg_scope_1, lift_used(Lift, building).
neg_scope_1 :- lift(Lift), part_of_evacuation_plan(Lift).
