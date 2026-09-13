% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 62f68500cd356397
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- light_permeable_structure(LightPermeableStructure).
obligation_met(LightPermeableStructure) :- light_permeable_structure(LightPermeableStructure), withstands_normal_load(LightPermeableStructure).
r1: violation <= light_permeable_structure(LightPermeableStructure), not obligation_met(LightPermeableStructure).
r2: exempt_r2 <= light_permeable_structure(LightPermeableStructure), protected_by_collision_barrier(LightPermeableStructure).
#conflict violation, exempt_r2.
r2 > r1.
