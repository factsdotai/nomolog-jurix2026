% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8d142ed7ca135b6d
% unit-unverified: '2000 gbp' passed through as 2000
applies :- dwelling(Dwelling), new_dwelling(Dwelling), not neg_scope_1.
obligation_met(Dwelling) :- dwelling(Dwelling), gigabit_connection(Dwelling).
r1: violation <= dwelling(Dwelling), new_dwelling(Dwelling), not neg_scope_1, not obligation_met(Dwelling).
neg_scope_1 :- dwelling(Dwelling), connection_cost(Dwelling, DwellingConnectionCost), DwellingConnectionCost > 2000.
neg_scope_1 :- dwelling(Dwelling), operator_declined(Dwelling).
