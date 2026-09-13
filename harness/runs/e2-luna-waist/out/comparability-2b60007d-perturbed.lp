applies :- masonry_wall_insulation(W).
r1: violation <= masonry_wall_insulation(W), dpc_present(W), not extends_below_dpc(W).
r2: violation <= masonry_wall_insulation(W), depth_below_floor_structure(W, D), D < 215.
r3: violation <= masonry_wall_insulation(W), depth_below_floor_structure(W, D), floor_insulation_depth(W, I), D < I.
