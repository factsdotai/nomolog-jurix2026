% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 443782efac91416c
% n_statements: 2  n_overrides: 1  dangling: 0
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(d).
obligation_met :- gigabit_connection(d).
r1: violation <= new_dwelling(d), not obligation_met.
r2: exempt_r2 <= new_dwelling(d), connection_cost(d, cost), cost > 2000.
r3: exempt_r2 <= new_dwelling(d), operator_declined(d).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
