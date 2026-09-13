% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3aa6c681f5d9377a
applies :- replacement_generation_system(NewSystem, ExistingSystem).
obligation_met(NewSystem) :- capacity(NewSystem, NewSystemCapacity), capacity(ExistingSystem, ExistingSystemCapacity), NewSystemCapacity >= ExistingSystemCapacity.
obligation_met(NewSystem) :- smaller_claimed(NewSystem), demonstrated_more_appropriate(NewSystem).
r1: violation <= replacement_generation_system(NewSystem, ExistingSystem), not obligation_met(NewSystem).
