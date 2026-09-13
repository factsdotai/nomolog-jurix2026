% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d99529f0efccd07b
applies :- residential_building(b1), tall_residential_building(b1), balcony(l1, b1), material_of(m1, l1), not neg_scope_1, not neg_scope_2.
obligation_met :- class_a1_or_a2(m1).
r1: violation <= residential_building(b1), tall_residential_building(b1), balcony(l1, b1), material_of(m1, l1), not neg_scope_1, not neg_scope_2, not obligation_met.
neg_scope_1 :- masonry_cavity_tray(m1).
neg_scope_2 :- firestopping_required(m1).
