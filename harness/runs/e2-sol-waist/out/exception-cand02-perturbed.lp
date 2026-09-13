applies :- generation_system(O), replacement_generation_system(N, O).
r1: violation <= generation_system(O), replacement_generation_system(N, O), capacity(N, New), capacity(O, Existing), New < Existing.
r2: exempt <= generation_system(O), replacement_generation_system(N, O), smaller_claimed(N), demonstrated_more_appropriate(N).
#conflict violation, exempt.
r2 > r1.
