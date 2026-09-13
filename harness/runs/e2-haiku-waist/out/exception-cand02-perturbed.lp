applies :- replacement_generation_system(N, O).
r1: violation <= replacement_generation_system(N, O), capacity(O, C_old), capacity(N, C_new), C_new < C_old.
r2: exempt <= replacement_generation_system(N, O), smaller_claimed(N), demonstrated_more_appropriate(N).
#conflict violation, exempt.
r2 > r1.
