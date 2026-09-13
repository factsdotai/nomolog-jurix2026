% Per-material exception => encoded as a body guard, not defeat: propositional defeat
% cannot exempt one material while another violates (S5 finding). Quantifier-level
% carve-outs are guards; provision-level overrides are defeats.
applies :- tall_residential_building(B), balcony(L, B).
r1: violation <= tall_residential_building(B), balcony(L, B), material_of(M, L), not class_a1_or_a2(M), not excepted_material(M).
excepted_material(M) :- masonry_cavity_tray(M).
excepted_material(M) :- firestopping_required(M).
