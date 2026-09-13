% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a01a406568d573de
% n_statements: 2  n_overrides: 1  dangling: 0
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(dwelling).
obligation_met :- gigabit_connection(dwelling).
r1: violation <= new_dwelling(dwelling), not obligation_met.
r2: exempt_r2 <= new_dwelling(dwelling), connection_cost(dwelling, cost), cost > 2000.
r3: exempt_r2 <= new_dwelling(dwelling), operator_declined(dwelling).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
