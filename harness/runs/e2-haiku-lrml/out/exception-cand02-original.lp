% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d9b34cc4680341f1
applies :- replacement_generation_system(ReplacementGenerationSystem), not neg_scope_1.
obligation_met(ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), capacity(ReplacementGenerationSystem, ReplacementGenerationSystemCapacity), capacity(ExistingGenerationSystem, ExistingGenerationSystemCapacity), ReplacementGenerationSystemCapacity >= ExistingGenerationSystemCapacity.
r1: violation <= replacement_generation_system(ReplacementGenerationSystem), not neg_scope_1, not obligation_met(ReplacementGenerationSystem).
neg_scope_1 :- replacement_generation_system(ReplacementGenerationSystem), demonstrated_more_appropriate(ReplacementGenerationSystem).
