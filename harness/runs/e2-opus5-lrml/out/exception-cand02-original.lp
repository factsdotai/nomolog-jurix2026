% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2721dce2981d9e00
applies :- new_generation_system(NewGenerationSystem), existing_generation_system(ExistingGenerationSystem), replacement_of(NewGenerationSystem, ExistingGenerationSystem), not neg_scope_1.
obligation_met(ExistingGenerationSystem, NewGenerationSystem) :- new_generation_system(NewGenerationSystem), capacity(NewGenerationSystem, NewGenerationSystemCapacity), existing_generation_system(ExistingGenerationSystem), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), NewGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
r1: violation <= new_generation_system(NewGenerationSystem), existing_generation_system(ExistingGenerationSystem), replacement_of(NewGenerationSystem, ExistingGenerationSystem), not neg_scope_1, not obligation_met(ExistingGenerationSystem, NewGenerationSystem).
neg_scope_1 :- new_generation_system(NewGenerationSystem), smaller_system_claimed(NewGenerationSystem), demonstrated_more_appropriate(NewGenerationSystem).
