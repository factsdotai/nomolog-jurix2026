% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: da8455e98c4ae8bc
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- masonry_wall_insulation(insulation), depth_below_floor_structure(insulation, depth), floor_insulation_depth(insulation, floor_depth).
applies :- masonry_wall_insulation(insulation), dpc_present(insulation).
obligation_met_r1 :- depth >= 215, depth > floor_depth.
r1: violation <= masonry_wall_insulation(insulation), depth_below_floor_structure(insulation, depth), floor_insulation_depth(insulation, floor_depth), not obligation_met_r1.
obligation_met_r2 :- extends_below_dpc(insulation).
r2: violation <= masonry_wall_insulation(insulation), dpc_present(insulation), not obligation_met_r2.
