% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8a9b67aa780ed3a6
applies :- residential_building(ResidentialBuilding), balcony(Balcony), storey_height(ResidentialBuilding, ResidentialBuildingStoreyHeight), ResidentialBuildingStoreyHeight >= 11000.
obligation_met(Balcony) :- balcony(Balcony), material(Balcony, BalconyMaterial), class_a1_or_a2(BalconyMaterial).
obligation_met(Balcony) :- balcony(Balcony), masonry_cavity_tray(Balcony).
obligation_met(Balcony) :- balcony(Balcony), firestopping_required(Balcony).
r1: violation <= residential_building(ResidentialBuilding), balcony(Balcony), storey_height(ResidentialBuilding, ResidentialBuildingStoreyHeight), ResidentialBuildingStoreyHeight >= 11000, not obligation_met(Balcony).
