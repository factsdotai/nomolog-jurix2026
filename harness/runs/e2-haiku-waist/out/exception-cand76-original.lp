applies :- new_dwelling(D).
r1: violation <= new_dwelling(D), not connection_ok(D).
connection_ok(D) :- gigabit_connection(D).
connection_ok(D) :- cost_exceeds_cap(D).
connection_ok(D) :- operator_declined(D).
cost_exceeds_cap(D) :- connection_cost(D, C), C > 2000.
