% Masonry: wall insulation extends below DPC (where applicable), >= 215mm below
% underside of floor structure, and beyond the depth of the floor insulation.
applies :- masonry_wall_insulation(I).
r1: violation <= masonry_wall_insulation(I), not insulation_ok(I).
insulation_ok(I) :- depth_below_floor_structure(I, D), floor_insulation_depth(I, F), D >= 215, D >= F, dpc_ok(I).
dpc_ok(I) :- extends_below_dpc(I).
dpc_ok(I) :- masonry_wall_insulation(I), not dpc_present(I).
