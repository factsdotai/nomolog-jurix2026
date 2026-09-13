% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 992f8169de0fe343
% term-flattened: nested call -> constant depth_below_floor_structure_wall_insulat
% term-flattened: nested call -> constant depth_below_floor_structure_wall_insulat
% term-flattened: nested call -> constant depth_below_floor_structure_wall_insulat
% term-flattened: nested call -> constant floor_insulation_depth_wall_insulation
% term-flattened: nested call -> constant depth_below_floor_structure_wall_insulat
% term-flattened: nested call -> constant floor_insulation_depth_wall_insulation
applies :- masonry_wall_insulation(wall_insulation).
obligation_met :- not neg_scope_1, depth_below_floor_structure_wall_insulat >= 215, depth_below_floor_structure_wall_insulat > floor_insulation_depth_wall_insulation.
obligation_met :- extends_below_dpc(wall_insulation), depth_below_floor_structure_wall_insulat >= 215, depth_below_floor_structure_wall_insulat > floor_insulation_depth_wall_insulation.
r1: violation <= masonry_wall_insulation(wall_insulation), not obligation_met.
neg_scope_1 :- dpc_present(wall_insulation).
