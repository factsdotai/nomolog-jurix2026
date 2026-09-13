applies :- masonry_wall_insulation(I), not timber_frame_wall(I).
r1: violation <= masonry_wall_insulation(I), not timber_frame_wall(I), dpc_present(I), not extends_below_dpc(I).
r2: violation <= masonry_wall_insulation(I), not timber_frame_wall(I), depth_below_floor_structure(I, D), D < 215.
r3: violation <= masonry_wall_insulation(I), not timber_frame_wall(I), depth_below_floor_structure(I, D), floor_insulation_depth(I, F), D < F.
