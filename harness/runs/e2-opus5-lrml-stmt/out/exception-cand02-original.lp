% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d3b15390645e382e
applies :- new_generation_system(NewGenerationSystem), replacement_of(NewGenerationSystem, ExistingGenerationSystem).
obligation_met(NewGenerationSystem) :- new_generation_system(NewGenerationSystem), capacity(NewGenerationSystem, NewGenerationSystemCapacity), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), NewGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
obligation_met(NewGenerationSystem) :- new_generation_system(NewGenerationSystem), smaller_system_claimed(NewGenerationSystem), demonstrated_more_appropriate(NewGenerationSystem).
r1: violation <= new_generation_system(NewGenerationSystem), replacement_of(NewGenerationSystem, ExistingGenerationSystem), not obligation_met(NewGenerationSystem).
