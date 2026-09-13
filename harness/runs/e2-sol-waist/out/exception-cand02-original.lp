applies :- generation_system(N), replacement_generation_system(N, O).
r1: violation <= generation_system(N), replacement_generation_system(N, O), capacity(N, Cn), capacity(O, Co), Cn < Co.
r2: exempt <= generation_system(N), replacement_generation_system(N, O), smaller_claimed(N), demonstrated_more_appropriate(N).
#conflict violation, exempt.
r2 > r1.
