% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 1503d060aabbb9b0
% n_statements: 2  n_overrides: 1  dangling: 0
% term-flattened: nested call -> constant depth_below_floor_structure_masonry_wall
% term-flattened: nested call -> constant depth_below_floor_structure_masonry_wall
% term-flattened: nested call -> constant floor_insulation_depth_masonry_wall_insu
applies :- masonry_wall_insulation(MasonryWallInsulation).
obligation_met(MasonryWallInsulation) :- masonry_wall_insulation(MasonryWallInsulation), extends_below_dpc(MasonryWallInsulation), depth_below_floor_structure_masonry_wall >= 215, depth_below_floor_structure_masonry_wall > floor_insulation_depth_masonry_wall_insu.
r1: violation <= masonry_wall_insulation(MasonryWallInsulation), not obligation_met(MasonryWallInsulation).
r2: exempt_r2 <= masonry_wall_insulation(MasonryWallInsulation), not neg_scope_1.
#conflict violation, exempt_r2.
r2 > r1.
neg_scope_1 :- masonry_wall_insulation(MasonryWallInsulation), dpc_present(MasonryWallInsulation).
