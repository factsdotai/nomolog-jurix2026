% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: da2babea793cac8d
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- structure(Structure), light_permeable_structure(Structure).
obligation_met(Structure) :- structure(Structure), withstands_normal_load(Structure), mountings(Structure, StructureMountings), withstands_normal_load(StructureMountings).
r1: violation <= structure(Structure), light_permeable_structure(Structure), not obligation_met(Structure).
r2: exempt_r2 <= structure(Structure), light_permeable_structure(Structure), protected_by_collision_barrier(Structure).
#conflict violation, exempt_r2.
r2 > r1.
