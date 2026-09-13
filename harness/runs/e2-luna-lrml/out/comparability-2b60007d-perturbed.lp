% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a9bea22817cba5e7
% term-flattened: nested call -> constant depth_below_floor_structure_masonry_wall
% term-flattened: nested call -> constant depth_below_floor_structure_masonry_wall
% term-flattened: nested call -> constant floor_insulation_depth_masonry_wall_insu
applies :- masonry_wall_insulation(MasonryWallInsulation), dpc_present(MasonryWallInsulation).
obligation_met(MasonryWallInsulation) :- masonry_wall_insulation(MasonryWallInsulation), extends_below_dpc(MasonryWallInsulation), depth_below_floor_structure_masonry_wall >= 215, depth_below_floor_structure_masonry_wall > floor_insulation_depth_masonry_wall_insu.
r1: violation <= masonry_wall_insulation(MasonryWallInsulation), dpc_present(MasonryWallInsulation), not obligation_met(MasonryWallInsulation).
