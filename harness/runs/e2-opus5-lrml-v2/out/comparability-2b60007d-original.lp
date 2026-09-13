% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e77c789aab5e9192
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- wall_insulation(WallInsulation), masonry_wall_insulation(WallInsulation).
applies :- wall_insulation(WallInsulation), masonry_wall_insulation(WallInsulation), dpc_present(WallInsulation).
obligation_met_r1(WallInsulation) :- wall_insulation(WallInsulation), depth_below_floor_structure(WallInsulation, WallInsulationDepthBelowFloorStructure), WallInsulationDepthBelowFloorStructure >= 215, floor_insulation_depth(WallInsulation, WallInsulationFloorInsulationDepth), WallInsulationDepthBelowFloorStructure > WallInsulationFloorInsulationDepth.
r1: violation <= wall_insulation(WallInsulation), masonry_wall_insulation(WallInsulation), not obligation_met_r1(WallInsulation).
obligation_met_r2(WallInsulation) :- wall_insulation(WallInsulation), extends_below_dpc(WallInsulation).
r2: violation <= wall_insulation(WallInsulation), masonry_wall_insulation(WallInsulation), dpc_present(WallInsulation), not obligation_met_r2(WallInsulation).
