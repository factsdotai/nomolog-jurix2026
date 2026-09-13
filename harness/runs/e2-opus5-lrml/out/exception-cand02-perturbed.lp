% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d3ae53cfc3608f7f
applies :- new_generation_system(NewGenerationSystem), existing_generation_system(ExistingGenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem).
obligation_met(NewGenerationSystem) :- new_generation_system(NewGenerationSystem), capacity(NewGenerationSystem, NewGenerationSystemCapacity), existing_generation_system(ExistingGenerationSystem), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), NewGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
obligation_met(NewGenerationSystem) :- new_generation_system(NewGenerationSystem), smaller_claimed(NewGenerationSystem), demonstrated_more_appropriate(NewGenerationSystem).
r1: violation <= new_generation_system(NewGenerationSystem), existing_generation_system(ExistingGenerationSystem), replacement_generation_system(NewGenerationSystem, ExistingGenerationSystem), not obligation_met(NewGenerationSystem).
