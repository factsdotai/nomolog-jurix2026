% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d4da9492a8a0181b
applies :- residential_building(ResidentialBuilding), balcony(Balcony), storey_height(Balcony, BalconyStoreyHeight), BalconyStoreyHeight >= 11000.
obligation_met(Balcony) :- balcony(Balcony), material(Balcony, BalconyMaterial), class_a1_or_a2(BalconyMaterial).
obligation_met(Balcony) :- balcony(Balcony), material(Balcony, BalconyMaterial), masonry_cavity_tray(BalconyMaterial).
obligation_met(Balcony) :- balcony(Balcony), material(Balcony, BalconyMaterial), firestopping_required(BalconyMaterial).
r1: violation <= residential_building(ResidentialBuilding), balcony(Balcony), storey_height(Balcony, BalconyStoreyHeight), BalconyStoreyHeight >= 11000, not obligation_met(Balcony).
