% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f57cada88f513007
applies :- light_permeable_structure(LightPermeableStructure).
obligation_met(LightPermeableStructure) :- light_permeable_structure(LightPermeableStructure), withstands_normal_load(LightPermeableStructure).
obligation_met(LightPermeableStructure) :- light_permeable_structure(LightPermeableStructure), protected_by_collision_barrier(LightPermeableStructure).
r1: violation <= light_permeable_structure(LightPermeableStructure), not obligation_met(LightPermeableStructure).
