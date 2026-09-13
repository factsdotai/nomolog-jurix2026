% Effective rated output assessed on the final installed capacity.
applies :- conditioning_system(S).
r1: violation <= conditioning_system(S), not assessed_on_final_capacity(S).
