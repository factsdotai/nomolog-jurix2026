% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: da8fa47c1c962cde
applies :- masonry_wall_insulation(MasonryWallInsulation), wall(Wall).
obligation_met(MasonryWallInsulation, Wall) :- masonry_wall_insulation(MasonryWallInsulation), extends_below_dpc(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, wall(Wall), floor_insulation_depth(Wall, WallFloorInsulationDepth), MasonryWallInsulationDepthBelowFloorStructure > WallFloorInsulationDepth.
obligation_met(MasonryWallInsulation, Wall) :- not neg_scope_1, masonry_wall_insulation(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, wall(Wall), floor_insulation_depth(Wall, WallFloorInsulationDepth), MasonryWallInsulationDepthBelowFloorStructure > WallFloorInsulationDepth.
r1: violation <= masonry_wall_insulation(MasonryWallInsulation), wall(Wall), not obligation_met(MasonryWallInsulation, Wall).
neg_scope_1 :- wall(Wall), dpc_present(Wall).
