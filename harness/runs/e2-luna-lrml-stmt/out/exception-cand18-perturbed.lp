% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 65e6c20fa6ea5fb4
applies :- residential_building(ResidentialBuilding), tall_residential_building(TallResidentialBuilding), balcony(Balcony).
obligation_met(Balcony) :- balcony(Balcony), material_of(Balcony), class_a1_or_a2(material).
obligation_met(Balcony) :- balcony(Balcony), material_of(Balcony), masonry_cavity_tray(material).
obligation_met(Balcony) :- balcony(Balcony), material_of(Balcony), firestopping_required(material).
r1: violation <= residential_building(ResidentialBuilding), tall_residential_building(TallResidentialBuilding), balcony(Balcony), not obligation_met(Balcony).
