% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6fb330d5f5c199c4
applies :- light_permeable_structure(structure).
obligation_met :- withstands_normal_load(structure).
obligation_met :- protected_by_collision_barrier(structure).
r1: violation <= light_permeable_structure(structure), not obligation_met.
