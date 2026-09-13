% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ddf9eb873faef927
applies :- building(b1), fire_in_building(b1), lift_used(l1, b1), not neg_scope_1.
r1: violation <= building(b1), fire_in_building(b1), lift_used(l1, b1), not neg_scope_1.
neg_scope_1 :- part_of_evacuation_plan(l1), appropriately_sited(l1), fire_safety_features(l1).
