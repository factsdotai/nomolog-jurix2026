% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 23c863da200395fc
applies :- masonry_wall_insulation(Insulation).
obligation_met(Insulation) :- not neg_scope_1, depth_below_floor_structure(Insulation, InsulationDepthBelowFloorStructure), InsulationDepthBelowFloorStructure >= 215, floor_insulation_depth(Insulation, InsulationFloorInsulationDepth), InsulationDepthBelowFloorStructure > InsulationFloorInsulationDepth.
obligation_met(Insulation) :- extends_below_dpc(Insulation), depth_below_floor_structure(Insulation, InsulationDepthBelowFloorStructure), InsulationDepthBelowFloorStructure >= 215, floor_insulation_depth(Insulation, InsulationFloorInsulationDepth), InsulationDepthBelowFloorStructure > InsulationFloorInsulationDepth.
r1: violation <= masonry_wall_insulation(Insulation), not obligation_met(Insulation).
neg_scope_1 :- dpc_present(Insulation).
