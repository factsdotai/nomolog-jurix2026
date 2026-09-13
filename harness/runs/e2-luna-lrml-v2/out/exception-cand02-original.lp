% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ea885cea32845bce
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- generation_system(ExistingSystem), replacement_generation_system(NewSystem, ExistingSystem).
obligation_met(ExistingSystem, NewSystem) :- capacity(NewSystem, NewSystemCapacity), capacity(ExistingSystem, ExistingSystemCapacity), NewSystemCapacity >= ExistingSystemCapacity.
r1: violation <= generation_system(ExistingSystem), replacement_generation_system(NewSystem, ExistingSystem), not obligation_met(ExistingSystem, NewSystem).
r2: exempt_r2 <= generation_system(ExistingSystem), replacement_generation_system(NewSystem, ExistingSystem), smaller_claimed(NewSystem), demonstrated_more_appropriate(NewSystem).
#conflict violation, exempt_r2.
r2 > r1.
