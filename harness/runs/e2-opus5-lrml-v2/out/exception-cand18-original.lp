% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 60b8f2dcbdf7a0e4
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(ResidentialBuilding, balcony), material(Material), material_of(Material, balcony).
obligation_met(Material) :- material(Material), class_a1_or_a2(Material).
r1: violation <= residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(ResidentialBuilding, balcony), material(Material), material_of(Material, balcony), not obligation_met(Material).
r2: exempt_r2 <= material(Material), masonry_cavity_tray(Material).
r3: exempt_r2 <= material(Material), firestopping_required(Material).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
