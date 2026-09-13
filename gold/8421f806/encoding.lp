% Approach gradient 1:20 or steeper (as fraction: >= 0.05) => ramped access design.
applies :- approach(A).
r1: violation <= approach(A), gradient_part(A, P), gradient(P, G), G >= 0.05, not ramped_access(P).
