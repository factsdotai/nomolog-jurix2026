% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c7ebde46d2d0e915
applies :- generation_system(GenerationSystem), replacement_generation_system(ReplacementGenerationSystem).
obligation_met(GenerationSystem, ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), capacity(ReplacementGenerationSystem, ReplacementGenerationSystemCapacity), generation_system(GenerationSystem), capacity(GenerationSystem, GenerationSystemCapacity), ReplacementGenerationSystemCapacity >= GenerationSystemCapacity.
obligation_met(GenerationSystem, ReplacementGenerationSystem) :- generation_system(GenerationSystem), replacement_generation_system(ReplacementGenerationSystem), smaller_claimed(ReplacementGenerationSystem), demonstrated_more_appropriate(ReplacementGenerationSystem).
r1: violation <= generation_system(GenerationSystem), replacement_generation_system(ReplacementGenerationSystem), not obligation_met(GenerationSystem, ReplacementGenerationSystem).
