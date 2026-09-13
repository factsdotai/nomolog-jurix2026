% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b89b96cbf4c9feba
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- masonry_wall_insulation(MasonryWallInsulation).
obligation_met(MasonryWallInsulation) :- masonry_wall_insulation(MasonryWallInsulation), extends_below_dpc(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, MasonryWallInsulationDepthBelowFloorStructure > floor_insulation_depth.
r1: violation <= masonry_wall_insulation(MasonryWallInsulation), not obligation_met(MasonryWallInsulation).
