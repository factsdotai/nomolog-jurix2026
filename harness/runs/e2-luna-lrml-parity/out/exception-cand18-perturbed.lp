% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d161d43190087f17
applies :- residential_building(ResidentialBuilding), tall_residential_building(TallResidentialBuilding), balcony(Balcony).
obligation_met :- class_a1_or_a2(material).
obligation_met :- masonry_cavity_tray(material).
obligation_met :- firestopping_required(material).
r1: violation <= residential_building(ResidentialBuilding), tall_residential_building(TallResidentialBuilding), balcony(Balcony), not obligation_met.
