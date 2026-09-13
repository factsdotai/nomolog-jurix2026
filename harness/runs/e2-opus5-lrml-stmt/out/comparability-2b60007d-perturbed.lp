% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 61ecaf11f841fb19
applies :- masonry_wall_insulation(MasonryWallInsulation).
obligation_met(MasonryWallInsulation) :- not neg_scope_1, masonry_wall_insulation(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, depth(FloorInsulation, FloorInsulationDepth), MasonryWallInsulationDepthBelowFloorStructure > FloorInsulationDepth.
obligation_met(MasonryWallInsulation) :- masonry_wall_insulation(MasonryWallInsulation), extends_below_dpc(MasonryWallInsulation), depth_below_floor_structure(MasonryWallInsulation, MasonryWallInsulationDepthBelowFloorStructure), MasonryWallInsulationDepthBelowFloorStructure >= 215, depth(FloorInsulation, FloorInsulationDepth), MasonryWallInsulationDepthBelowFloorStructure > FloorInsulationDepth.
r1: violation <= masonry_wall_insulation(MasonryWallInsulation), not obligation_met(MasonryWallInsulation).
neg_scope_1 :- damp_proof_course(DampProofCourse).
