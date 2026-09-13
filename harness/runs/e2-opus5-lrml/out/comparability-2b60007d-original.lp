% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2d7067e7d02d0ff5
applies :- masonry_wall_insulation(MasonryWallInsulation), dpc_present(MasonryWallInsulation).
obligation_met(MasonryWallInsulation) :- masonry_wall_insulation(MasonryWallInsulation), extends_below_dpc(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, floor_insulation_depth(MasonryWallInsulation, MasonryWallInsulationFloorInsulationDepth), MasonryWallInsulationDepthBelowFloorStructure > MasonryWallInsulationFloorInsulationDepth.
r1: violation <= masonry_wall_insulation(MasonryWallInsulation), dpc_present(MasonryWallInsulation), not obligation_met(MasonryWallInsulation).
