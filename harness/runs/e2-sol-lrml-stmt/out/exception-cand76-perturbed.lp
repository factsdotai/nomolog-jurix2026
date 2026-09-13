% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 39c3588b0271a778
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(dwelling).
obligation_met :- gigabit_connection(dwelling).
obligation_met :- connection_cost(dwelling, cost), cost > 2000.
obligation_met :- operator_declined(dwelling).
r1: violation <= new_dwelling(dwelling), not obligation_met.
