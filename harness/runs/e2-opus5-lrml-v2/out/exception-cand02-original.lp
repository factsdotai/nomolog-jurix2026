% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 488dde6dfcb4b45d
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- generation_system(GenerationSystem), replacement_generation_system(GenerationSystem, ExistingGenerationSystem).
obligation_met(ExistingGenerationSystem, GenerationSystem) :- generation_system(GenerationSystem), capacity(GenerationSystem, GenerationSystemCapacity), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), GenerationSystemCapacity >= ExistingGenerationSystemCapacity.
r1: violation <= generation_system(GenerationSystem), replacement_generation_system(GenerationSystem, ExistingGenerationSystem), not obligation_met(ExistingGenerationSystem, GenerationSystem).
r2: exempt_r2 <= generation_system(GenerationSystem), replacement_generation_system(GenerationSystem, ExistingGenerationSystem), smaller_claimed(GenerationSystem), demonstrated_more_appropriate(GenerationSystem).
#conflict violation, exempt_r2.
r2 > r1.
