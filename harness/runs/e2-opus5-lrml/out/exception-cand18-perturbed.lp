% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 01fb4ae555db4534
applies :- residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(Balcony), balcony(ResidentialBuilding, Balcony), material(Material), material_of(Material, Balcony), not neg_scope_1.
obligation_met(Material) :- material(Material), class_a1_or_a2(Material).
r1: violation <= residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(Balcony), balcony(ResidentialBuilding, Balcony), material(Material), material_of(Material, Balcony), not neg_scope_1, not obligation_met(Material).
neg_scope_1 :- material(Material), masonry_cavity_tray(Material).
neg_scope_1 :- material(Material), firestopping_required(Material).
