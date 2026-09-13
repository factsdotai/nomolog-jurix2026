% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1e64ada9c4cad5a2
applies :- replacement_generation_system(ReplacementGenerationSystem), replacement_generation_system(project, ExistingSystem).
obligation_met(ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), capacity(ReplacementGenerationSystem, ReplacementGenerationSystemCapacity), capacity(ExistingSystem, ExistingSystemCapacity), ReplacementGenerationSystemCapacity >= ExistingSystemCapacity.
obligation_met(ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), smaller_claimed(ReplacementGenerationSystem), demonstrated_more_appropriate(ReplacementGenerationSystem).
r1: violation <= replacement_generation_system(ReplacementGenerationSystem), replacement_generation_system(project, ExistingSystem), not obligation_met(ReplacementGenerationSystem).
