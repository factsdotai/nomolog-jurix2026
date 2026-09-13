% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cf3134b86b779da7
applies :- masonry_wall_insulation(insulation), depth_below_floor_structure(insulation, depth), floor_insulation_depth(insulation, floor_depth).
obligation_met :- not neg_scope_1, depth >= 215, depth > floor_depth.
obligation_met :- extends_below_dpc(insulation), depth >= 215, depth > floor_depth.
r1: violation <= masonry_wall_insulation(insulation), depth_below_floor_structure(insulation, depth), floor_insulation_depth(insulation, floor_depth), not obligation_met.
neg_scope_1 :- dpc_present(insulation).
