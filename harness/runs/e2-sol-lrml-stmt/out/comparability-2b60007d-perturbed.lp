% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 11915e1c1e621f08
% term-flattened: nested call -> constant depth_below_floor_structure_wall
% term-flattened: nested call -> constant depth_below_floor_structure_wall
% term-flattened: nested call -> constant depth_below_floor_structure_wall
% term-flattened: nested call -> constant floor_insulation_depth_wall
% term-flattened: nested call -> constant depth_below_floor_structure_wall
% term-flattened: nested call -> constant floor_insulation_depth_wall
applies :- masonry_wall_insulation(wall).
obligation_met :- not neg_scope_1, depth_below_floor_structure_wall >= 215, depth_below_floor_structure_wall > floor_insulation_depth_wall.
obligation_met :- extends_below_dpc(wall), depth_below_floor_structure_wall >= 215, depth_below_floor_structure_wall > floor_insulation_depth_wall.
r1: violation <= masonry_wall_insulation(wall), not obligation_met.
neg_scope_1 :- dpc_present(wall).
