% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8a83447681267c89
applies :- residential_building(building), tall_residential_building(building), balcony(balcony, building), material_of(material, balcony).
obligation_met :- class_a1_or_a2(material).
obligation_met :- masonry_cavity_tray(material).
obligation_met :- firestopping_required(material).
r1: violation <= residential_building(building), tall_residential_building(building), balcony(balcony, building), material_of(material, balcony), not obligation_met.
