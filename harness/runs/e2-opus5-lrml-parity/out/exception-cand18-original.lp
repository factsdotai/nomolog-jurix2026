% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9c5a7cc72558f5aa
applies :- building(Building), residential_building(Building), tall_residential_building(Building), balcony(Balcony), part_of(Balcony, Building), material(Material), material_of(Material, Balcony).
obligation_met(Material) :- material(Material), class_a1_or_a2(Material).
obligation_met(Material) :- material(Material), masonry_cavity_tray(Material).
obligation_met(Material) :- material(Material), firestopping_required(Material).
r1: violation <= building(Building), residential_building(Building), tall_residential_building(Building), balcony(Balcony), part_of(Balcony, Building), material(Material), material_of(Material, Balcony), not obligation_met(Material).
