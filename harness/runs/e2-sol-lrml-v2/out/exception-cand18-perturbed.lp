% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0b564814388f6254
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- residential_building(b1), tall_residential_building(b1), balcony(l1, b1), material_of(m1, l1), not neg_scope_1.
obligation_met :- class_a1_or_a2(m1).
r1: violation <= residential_building(b1), tall_residential_building(b1), balcony(l1, b1), material_of(m1, l1), not neg_scope_1, not obligation_met.
neg_scope_1 :- masonry_cavity_tray(m1).
neg_scope_1 :- firestopping_required(m1).
