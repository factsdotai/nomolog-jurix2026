% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 42832d9d870c2f39
applies :- balcony(Balcony), residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding).
obligation_met(Balcony) :- balcony(Balcony), material_of(Balcony), class_a1_or_a2(material).
obligation_met(Balcony) :- balcony(Balcony), material_of(Balcony), masonry_cavity_tray(material).
obligation_met(Balcony) :- balcony(Balcony), material_of(Balcony), firestopping_required(material).
r1: violation <= balcony(Balcony), residential_building(ResidentialBuilding), tall_residential_building(ResidentialBuilding), not obligation_met(Balcony).
