% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c438dcdc9aba28b7
applies :- residential_building(ResidentialBuilding), balcony(Balcony), storey_height(Balcony, BalconyStoreyHeight), BalconyStoreyHeight >= 11000.
obligation_met(Balcony) :- balcony(Balcony), class_a1_or_a2(Balcony).
obligation_met(Balcony) :- balcony(Balcony), masonry_cavity_tray(Balcony), firestopping_required(Balcony).
r1: violation <= residential_building(ResidentialBuilding), balcony(Balcony), storey_height(Balcony, BalconyStoreyHeight), BalconyStoreyHeight >= 11000, not obligation_met(Balcony).
