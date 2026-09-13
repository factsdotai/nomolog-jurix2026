% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: fd94785f7ca3935a
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(d), not neg_scope_1, not neg_scope_2.
obligation_met :- gigabit_connection(d).
r1: violation <= new_dwelling(d), not neg_scope_1, not neg_scope_2, not obligation_met.
neg_scope_1 :- connection_cost(d, c), c > 2000.
neg_scope_2 :- operator_declined(d).
