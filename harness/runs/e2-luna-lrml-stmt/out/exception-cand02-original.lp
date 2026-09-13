% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 29ee115ce947423a
% term-flattened: nested call -> constant capacity_new_generation_system
% term-flattened: nested call -> constant capacity_existing_generation_system
applies :- replacement_generation_system(ReplacementGenerationSystem).
obligation_met :- capacity_new_generation_system >= capacity_existing_generation_system.
obligation_met :- smaller_claimed(new_generation_system), demonstrated_more_appropriate(new_generation_system).
obligation_met :- smaller_claimed(new_generation_system), demonstrated_more_effective(new_generation_system).
r1: violation <= replacement_generation_system(ReplacementGenerationSystem), not obligation_met.
