applies :- tall_residential_building(B), balcony(L, B).
r1: violation <= tall_residential_building(B), balcony(L, B), material_of(M, L), not material_ok(M).
material_ok(M) :- class_a1_or_a2(M).
material_ok(M) :- masonry_cavity_tray(M).
material_ok(M) :- firestopping_required(M).
