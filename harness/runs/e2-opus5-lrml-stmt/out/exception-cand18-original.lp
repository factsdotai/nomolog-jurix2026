% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4d562e66c678aae5
applies :- residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(Balcony), material(Material), material_of(Material, Balcony).
obligation_met(Material) :- material(Material), class_a1_or_a2(Material).
obligation_met(Material) :- material(Material), masonry_cavity_tray(Material).
obligation_met(Material) :- material(Material), firestopping_required(Material).
r1: violation <= residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(Balcony), material(Material), material_of(Material, Balcony), not obligation_met(Material).
