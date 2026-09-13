% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c2354d9c0a4cd0b9
% term-flattened: nested call -> constant capacity_replacement_generation_system
% term-flattened: nested call -> constant capacity_existing_generation_system
applies :- replacement_generation_system(ReplacementGenerationSystem), not neg_scope_1.
obligation_met :- capacity_replacement_generation_system >= capacity_existing_generation_system.
r1: violation <= replacement_generation_system(ReplacementGenerationSystem), not neg_scope_1, not obligation_met.
neg_scope_1 :- replacement_generation_system(ReplacementGenerationSystem), demonstrated_more_appropriate(ReplacementGenerationSystem).
