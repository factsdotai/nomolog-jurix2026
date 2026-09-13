% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5c6cad49fd7e8430
applies :- glass_structure(GlassStructure), not neg_scope_1.
applies :- light_permeable_structure(LightPermeableStructure), not neg_scope_2.
obligation_met :- light_permeable_structure(LightPermeableStructure), withstands_normal_load(LightPermeableStructure).
r1: violation <= glass_structure(GlassStructure), not neg_scope_1, not obligation_met.
r2: violation <= light_permeable_structure(LightPermeableStructure), not neg_scope_2, not obligation_met.
neg_scope_1 :- light_permeable_structure(LightPermeableStructure), protected_by_collision_barrier(LightPermeableStructure).
neg_scope_2 :- light_permeable_structure(LightPermeableStructure), protected_by_collision_barrier(LightPermeableStructure).
