% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5ba7328aa3a69488
applies :- generation_system(GenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem).
obligation_met(NewGenerationSystem) :- capacity(NewGenerationSystem, NewGenerationSystemCapacity), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), NewGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
obligation_met(NewGenerationSystem) :- smaller_claimed(NewGenerationSystem), demonstrated_more_appropriate(NewGenerationSystem).
r1: violation <= generation_system(GenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem), not obligation_met(NewGenerationSystem).
