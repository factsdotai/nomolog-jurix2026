% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d5b807aaaf466142
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- wall_insulation(WallInsulation), masonry_construction(WallInsulation).
applies :- wall_insulation(WallInsulation), masonry_construction(WallInsulation), damp_proof_course(DampProofCourse).
obligation_met_s1(WallInsulation) :- wall_insulation(WallInsulation), depth_below_floor_structure(WallInsulation, WallInsulationDepthBelowFloorStructure), WallInsulationDepthBelowFloorStructure >= 215, floor_insulation_depth(WallInsulation, WallInsulationFloorInsulationDepth), WallInsulationDepthBelowFloorStructure > WallInsulationFloorInsulationDepth.
r1: violation <= wall_insulation(WallInsulation), masonry_construction(WallInsulation), not obligation_met_s1(WallInsulation).
obligation_met_s2(DampProofCourse, WallInsulation) :- wall_insulation(WallInsulation), damp_proof_course(DampProofCourse), extends_below(WallInsulation, DampProofCourse).
r2: violation <= wall_insulation(WallInsulation), masonry_construction(WallInsulation), damp_proof_course(DampProofCourse), not obligation_met_s2(DampProofCourse, WallInsulation).
