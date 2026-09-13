applies :- generation_system(Existing), replacement_generation_system(New, Existing).

r1: violation <= generation_system(Existing), replacement_generation_system(New, Existing), capacity(New, NewCapacity), capacity(Existing, ExistingCapacity), NewCapacity < ExistingCapacity.

r2: exempt <= generation_system(Existing), replacement_generation_system(New, Existing), smaller_claimed(New), demonstrated_more_appropriate(New).

#conflict violation, exempt.
r2 > r1.
