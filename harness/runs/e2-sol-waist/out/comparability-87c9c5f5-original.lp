applies :- boiler(S).
applies :- conditioning_system(S).
r1: violation <= boiler(S), not assessed_on_final_capacity(S).
r2: violation <= conditioning_system(S), not assessed_on_final_capacity(S).
