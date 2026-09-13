% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 971b1e929081f8b0
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- generation_system(GenerationSystem), replacement_generation_system(ReplacementSystem, ExistingSystem).
obligation_met(ExistingSystem, ReplacementSystem) :- capacity(ReplacementSystem, ReplacementSystemCapacity), capacity(ExistingSystem, ExistingSystemCapacity), ReplacementSystemCapacity >= ExistingSystemCapacity.
r1: violation <= generation_system(GenerationSystem), replacement_generation_system(ReplacementSystem, ExistingSystem), not obligation_met(ExistingSystem, ReplacementSystem).
r2: exempt_r2 <= generation_system(GenerationSystem), replacement_generation_system(ReplacementSystem, ExistingSystem), demonstrated_more_appropriate(ReplacementSystem).
#conflict violation, exempt_r2.
r2 > r1.
