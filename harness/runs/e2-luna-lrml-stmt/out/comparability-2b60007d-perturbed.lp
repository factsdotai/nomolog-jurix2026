% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0c2a7913cf1d76d5
applies :- masonry_wall_insulation(MasonryWallInsulation).
obligation_met(MasonryWallInsulation) :- not neg_scope_1, masonry_wall_insulation(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, MasonryWallInsulationDepthBelowFloorStructure > floor_insulation_depth.
obligation_met(MasonryWallInsulation) :- masonry_wall_insulation(MasonryWallInsulation), extends_below_dpc(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, MasonryWallInsulationDepthBelowFloorStructure > floor_insulation_depth.
r1: violation <= masonry_wall_insulation(MasonryWallInsulation), not obligation_met(MasonryWallInsulation).
neg_scope_1 :- masonry_wall_insulation(MasonryWallInsulation), dpc_present(MasonryWallInsulation).
