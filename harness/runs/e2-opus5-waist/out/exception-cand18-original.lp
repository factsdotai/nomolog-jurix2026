% exceptions as superior defeasible rules
applies :- residential_building(B), tall_residential_building(B), balcony(Bal, B).
r1: violation <= residential_building(B), tall_residential_building(B), balcony(Bal, B), material_of(M, Bal), not class_a1_or_a2(M).
r2: exempt <= balcony(Bal, B), material_of(M, Bal), masonry_cavity_tray(M).
r3: exempt <= balcony(Bal, B), material_of(M, Bal), firestopping_required(M).
#conflict violation, exempt.
r2 > r1.
r3 > r1.
