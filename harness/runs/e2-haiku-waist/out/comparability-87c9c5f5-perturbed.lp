applies :- heating_system(S).
applies :- conditioning_system(S).
r1: violation <= heating_system(S), not assessed_on_final_capacity(S).
r2: violation <= conditioning_system(S), not assessed_on_final_capacity(S).
