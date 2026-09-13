% Existing dwelling, complete new/replacement system => whole-system energy
% performance assessed.
applies :- existing_dwelling(D), complete_new_system(S, D).
r1: violation <= existing_dwelling(D), complete_new_system(S, D), not whole_system_performance_assessed(S).
