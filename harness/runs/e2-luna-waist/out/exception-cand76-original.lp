applies :- new_dwelling(D).
r1: violation <= new_dwelling(D), not gigabit_connection(D).
r2: exempt <= new_dwelling(D), connection_cost(D, C), C > 2000.
r3: exempt <= new_dwelling(D), operator_declined(D).
#conflict violation, exempt.
r2 > r1.
r3 > r1.
