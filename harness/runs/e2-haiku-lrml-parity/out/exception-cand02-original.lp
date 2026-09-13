% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bcd3e7229baec2ae
% term-flattened: nested call -> constant capacity_replacement_generation_system_n
% term-flattened: nested call -> constant capacity_existing_system_old_capacity
applies :- replacement_generation_system(ReplacementGenerationSystem), replacement_generation_system(project, existing_system).
obligation_met(ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), capacity_replacement_generation_system_n >= capacity_existing_system_old_capacity.
obligation_met(ReplacementGenerationSystem) :- replacement_generation_system(ReplacementGenerationSystem), smaller_claimed(ReplacementGenerationSystem), demonstrated_more_appropriate(ReplacementGenerationSystem).
r1: violation <= replacement_generation_system(ReplacementGenerationSystem), replacement_generation_system(project, existing_system), not obligation_met(ReplacementGenerationSystem).
