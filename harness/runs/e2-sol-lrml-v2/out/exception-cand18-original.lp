% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ef2659253158edc6
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- residential_building(b), tall_residential_building(b), balcony(l, b), material_of(m, l).
obligation_met :- class_a1_or_a2(m).
r1: violation <= residential_building(b), tall_residential_building(b), balcony(l, b), material_of(m, l), not obligation_met.
r2: exempt_r2 <= residential_building(b), tall_residential_building(b), balcony(l, b), material_of(m, l), masonry_cavity_tray(m).
r3: exempt_r2 <= residential_building(b), tall_residential_building(b), balcony(l, b), material_of(m, l), firestopping_required(m).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
