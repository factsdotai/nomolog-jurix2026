applies :- tall_residential_building(B), balcony(L, Bal), material_of(M, Bal).
r1: violation <= tall_residential_building(B), balcony(L, Bal), material_of(M, Bal), not material_ok(M).
material_ok(M) :- class_a1_or_a2(M).
material_ok(M) :- masonry_cavity_tray(M).
material_ok(M) :- firestopping_required(M).
