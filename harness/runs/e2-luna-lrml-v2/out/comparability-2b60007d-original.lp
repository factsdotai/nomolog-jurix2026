% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6a82e1bb8565a193
% n_statements: 2  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant depth_below_floor_structure_i
% term-flattened: nested call -> constant depth_below_floor_structure_i
% term-flattened: nested call -> constant floor_insulation_depth_i
applies :- masonry_wall_insulation(i), dpc_present(i).
applies :- masonry_wall_insulation(i).
obligation_met_r1 :- extends_below_dpc(i).
r1: violation <= masonry_wall_insulation(i), dpc_present(i), not obligation_met_r1.
obligation_met_r2 :- depth_below_floor_structure_i >= 215, depth_below_floor_structure_i > floor_insulation_depth_i.
r2: violation <= masonry_wall_insulation(i), not obligation_met_r2.
