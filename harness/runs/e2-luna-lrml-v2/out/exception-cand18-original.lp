% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2270b78b73962f76
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building), tall_residential_building(Building), balcony(Balcony), balcony(Balcony, Building), material(Material), material_of(Material, Balcony), not neg_scope_1, not neg_scope_2.
obligation_met(Material) :- material(Material), class_a1_or_a2(Material).
r1: violation <= building(Building), tall_residential_building(Building), balcony(Balcony), balcony(Balcony, Building), material(Material), material_of(Material, Balcony), not neg_scope_1, not neg_scope_2, not obligation_met(Material).
neg_scope_1 :- material(Material), masonry_cavity_tray(Material).
neg_scope_2 :- material(Material), firestopping_required(Material).
