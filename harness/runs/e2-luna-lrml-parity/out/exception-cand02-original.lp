% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d6e194d731726f33
applies :- replacement_generation_system(ReplacementGenerationSystem).
obligation_met(ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), capacity(ReplacementGenerationSystem, ReplacementGenerationSystemCapacity), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), ReplacementGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
obligation_met(ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), smaller_claimed(ReplacementGenerationSystem), demonstrated_more_appropriate(ReplacementGenerationSystem).
r1: violation <= replacement_generation_system(ReplacementGenerationSystem), not obligation_met(ReplacementGenerationSystem).
