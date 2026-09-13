% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fd2e41e045386624
applies :- residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(ResidentialBuilding, balcony), material_of(material, balcony), not neg_scope_1.
obligation_met :- class_a1_or_a2(material).
r1: violation <= residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), balcony(ResidentialBuilding, balcony), material_of(material, balcony), not neg_scope_1, not obligation_met.
neg_scope_1 :- masonry_cavity_tray(material).
neg_scope_1 :- firestopping_required(material).
