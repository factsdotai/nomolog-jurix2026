applies :- residential_building(B), tall_residential_building(B), balcony(L, B), material_of(M, L).
r1: violation <= residential_building(B), tall_residential_building(B), balcony(L, B), material_of(M, L), not class_a1_or_a2(M).
r2: exempt <= residential_building(B), tall_residential_building(B), balcony(L, B), material_of(M, L), masonry_cavity_tray(M).
r3: exempt <= residential_building(B), tall_residential_building(B), balcony(L, B), material_of(M, L), firestopping_required(M).
#conflict violation, exempt.
r2 > r1.
r3 > r1.
