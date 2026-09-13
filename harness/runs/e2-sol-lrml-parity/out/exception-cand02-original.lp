% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: af4492d9d2138f3d
applies :- generation_system(NewSystem), generation_system(ExistingSystem), replacement_generation_system(NewSystem, ExistingSystem).
obligation_met(NewSystem) :- capacity(NewSystem, NewSystemCapacity), capacity(ExistingSystem, ExistingSystemCapacity), NewSystemCapacity >= ExistingSystemCapacity.
obligation_met(NewSystem) :- smaller_claimed(NewSystem), demonstrated_more_appropriate(NewSystem).
r1: violation <= generation_system(NewSystem), generation_system(ExistingSystem), replacement_generation_system(NewSystem, ExistingSystem), not obligation_met(NewSystem).
