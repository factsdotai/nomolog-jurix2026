applies :- boiler(B).
applies :- conditioning_system(S).
r1: violation <= boiler(B), not assessed_on_final_capacity(B).
r2: violation <= conditioning_system(S), not assessed_on_final_capacity(S).
