% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 61f0d873e71c8129
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- generation_system(GenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem).
obligation_met(ExistingGenerationSystem, NewGenerationSystem) :- capacity(NewGenerationSystem, NewGenerationSystemCapacity), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), NewGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
r1: violation <= generation_system(GenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem), not obligation_met(ExistingGenerationSystem, NewGenerationSystem).
r2: exempt_r2 <= generation_system(GenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem), smaller_claimed(NewGenerationSystem), demonstrated_more_appropriate(NewGenerationSystem).
#conflict violation, exempt_r2.
r2 > r1.
