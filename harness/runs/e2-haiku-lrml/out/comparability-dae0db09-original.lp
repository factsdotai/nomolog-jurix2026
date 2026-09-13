% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ad8a764d414a9dd3
applies :- light_permeable_structure(LightPermeableStructure), not neg_scope_1.
obligation_met(LightPermeableStructure) :- light_permeable_structure(LightPermeableStructure), withstands_normal_load(LightPermeableStructure).
r1: violation <= light_permeable_structure(LightPermeableStructure), not neg_scope_1, not obligation_met(LightPermeableStructure).
neg_scope_1 :- light_permeable_structure(LightPermeableStructure), protected_by_collision_barrier(LightPermeableStructure).
