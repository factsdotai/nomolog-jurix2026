applies :- generation_system(New), replacement_generation_system(New, Existing), generation_system(Existing).
r1: violation <= generation_system(New), replacement_generation_system(New, Existing), generation_system(Existing), capacity(New, NewCapacity), capacity(Existing, ExistingCapacity), NewCapacity < ExistingCapacity.
r2: exempt <= generation_system(New), replacement_generation_system(New, Existing), generation_system(Existing), smaller_claimed(New), demonstrated_more_appropriate(New).
#conflict violation, exempt.
r2 > r1.
