% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e8dfc830b089e04c
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- generation_system(GenerationSystem), replacement_generation_system(GenerationSystem, ReplacementGenerationSystem).
obligation_met(GenerationSystem, ReplacementGenerationSystem) :- capacity(ReplacementGenerationSystem, ReplacementGenerationSystemCapacity), generation_system(GenerationSystem), capacity(GenerationSystem, GenerationSystemCapacity), ReplacementGenerationSystemCapacity >= GenerationSystemCapacity.
r1: violation <= generation_system(GenerationSystem), replacement_generation_system(GenerationSystem, ReplacementGenerationSystem), not obligation_met(GenerationSystem, ReplacementGenerationSystem).
r2: exempt_r2 <= generation_system(GenerationSystem), replacement_generation_system(GenerationSystem, ReplacementGenerationSystem), demonstrated_more_appropriate(ReplacementGenerationSystem).
#conflict violation, exempt_r2.
r2 > r1.
