% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6a540b9bb5eacf7c
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant depth_below_floor_structure_i1
% term-flattened: nested call -> constant depth_below_floor_structure_i1
% term-flattened: nested call -> constant floor_insulation_depth_i1
applies :- masonry_wall_insulation(i1), dpc_present(i1).
obligation_met :- extends_below_dpc(i1), depth_below_floor_structure_i1 >= 215, depth_below_floor_structure_i1 > floor_insulation_depth_i1.
r1: violation <= masonry_wall_insulation(i1), dpc_present(i1), not obligation_met.
