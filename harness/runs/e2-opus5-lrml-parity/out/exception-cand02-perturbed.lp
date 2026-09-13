% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 606aaf35496df432
applies :- new_generation_system(NewGenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem).
obligation_met(NewGenerationSystem) :- new_generation_system(NewGenerationSystem), capacity(NewGenerationSystem, NewGenerationSystemCapacity), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), NewGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
obligation_met(NewGenerationSystem) :- new_generation_system(NewGenerationSystem), smaller_claimed(NewGenerationSystem), demonstrated_more_appropriate(NewGenerationSystem).
r1: violation <= new_generation_system(NewGenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem), not obligation_met(NewGenerationSystem).
