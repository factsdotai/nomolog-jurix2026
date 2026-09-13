% 1:20 expressed as the fraction 0.05; "or steeper" -> >=
applies :- approach(A), gradient_part(A, P), gradient(P, G), G >= 0.05.
r1: violation <= approach(A), gradient_part(A, P), gradient(P, G), G >= 0.05, not ramped_access(P).
