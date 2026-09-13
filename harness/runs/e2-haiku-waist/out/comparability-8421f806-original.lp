applies :- approach(A), gradient(A, G), G >= 0.05.
applies :- approach(A), gradient_part(A, P), gradient(P, G), G >= 0.05.
r1: violation <= approach(A), gradient(A, G), G >= 0.05, not ramped_access(A).
r2: violation <= approach(A), gradient_part(A, P), gradient(P, G), G >= 0.05, not ramped_access(P).
