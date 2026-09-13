% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e4614a6181114f02
% n_statements: 2  n_overrides: 1  dangling: 0
% unit-unverified: '2000 gbp' passed through as 2000
applies :- dwelling(Dwelling), new_dwelling(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), gigabit_connection(Dwelling).
r1: violation <= dwelling(Dwelling), new_dwelling(Dwelling), not obligation_met(Dwelling).
r2: exempt_r2 <= dwelling(Dwelling), new_dwelling(Dwelling), connection_cost(Dwelling, DwellingConnectionCost), DwellingConnectionCost > 2000.
r3: exempt_r2 <= dwelling(Dwelling), new_dwelling(Dwelling), operator_declined(Dwelling).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
