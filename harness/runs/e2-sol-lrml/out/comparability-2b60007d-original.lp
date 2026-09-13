% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cc1f6a9b86029a5b
applies :- masonry_wall_insulation(i1), depth_below_floor_structure(i1, d), floor_insulation_depth(i1, f).
obligation_met :- not neg_scope_1, d >= 215, d > f.
obligation_met :- extends_below_dpc(i1), d >= 215, d > f.
r1: violation <= masonry_wall_insulation(i1), depth_below_floor_structure(i1, d), floor_insulation_depth(i1, f), not obligation_met.
neg_scope_1 :- dpc_present(i1).
