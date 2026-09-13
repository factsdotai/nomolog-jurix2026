applies :- replacement_generation_system(N, O).
r1: violation <= replacement_generation_system(N, O), capacity(N, CN), capacity(O, CO), CN < CO.
r2: exempt <= replacement_generation_system(N, O), demonstrated_more_appropriate(N).
#conflict violation, exempt.
r2 > r1.
