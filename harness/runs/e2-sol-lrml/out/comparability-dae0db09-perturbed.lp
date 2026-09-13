% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e8f9ec7df7ee028a
applies :- light_permeable_structure(structure), not neg_scope_1.
obligation_met :- withstands_normal_load(structure).
r1: violation <= light_permeable_structure(structure), not neg_scope_1, not obligation_met.
neg_scope_1 :- protected_by_collision_barrier(structure).
