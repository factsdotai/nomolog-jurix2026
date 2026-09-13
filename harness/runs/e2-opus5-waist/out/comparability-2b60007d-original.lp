% dpc requirement conditional on a dpc being present
applies :- masonry_wall_insulation(I).
r1: violation <= masonry_wall_insulation(I), dpc_present(I), not extends_below_dpc(I).
r2: violation <= masonry_wall_insulation(I), depth_below_floor_structure(I, D), D < 215.
r3: violation <= masonry_wall_insulation(I), depth_below_floor_structure(I, D), floor_insulation_depth(I, F), D < F.
