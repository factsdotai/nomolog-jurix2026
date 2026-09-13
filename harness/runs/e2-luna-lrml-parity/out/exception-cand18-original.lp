% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 05e6a2b836dcbe1a
applies :- residential_building(ResidentialBuilding), tall_residential_building(TallResidentialBuilding), balcony(Balcony).
obligation_met(Balcony) :- balcony(Balcony), material_of(material, Balcony), class_a1_or_a2(material).
obligation_met(Balcony) :- balcony(Balcony), material_of(material, Balcony), masonry_cavity_tray(material).
obligation_met(Balcony) :- balcony(Balcony), material_of(material, Balcony), firestopping_required(material).
r1: violation <= residential_building(ResidentialBuilding), tall_residential_building(TallResidentialBuilding), balcony(Balcony), not obligation_met(Balcony).
