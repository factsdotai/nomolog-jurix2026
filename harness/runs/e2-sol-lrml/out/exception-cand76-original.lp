% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9ca302da0e310476
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(dwelling), not neg_scope_1.
obligation_met :- gigabit_connection(dwelling).
r1: violation <= new_dwelling(dwelling), not neg_scope_1, not obligation_met.
neg_scope_1 :- connection_cost(dwelling, cost), cost > 2000.
neg_scope_1 :- operator_declined(dwelling).
