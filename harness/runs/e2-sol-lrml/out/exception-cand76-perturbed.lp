% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b7fb1cbbd70a9ba8
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(d), not neg_scope_1.
obligation_met :- gigabit_connection(d).
r1: violation <= new_dwelling(d), not neg_scope_1, not obligation_met.
neg_scope_1 :- connection_cost(d, cost), cost > 2000.
neg_scope_1 :- operator_declined(d).
