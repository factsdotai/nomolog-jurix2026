% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7b5533833f47231a
% unit-unverified: '2000 GBP' passed through as 2000
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(dwelling).
obligation_met :- gigabit_connection(dwelling).
obligation_met :- operator_declined(dwelling).
obligation_met :- cost(Cost), connection_cost(dwelling, Cost), Cost > 2000.
r1: violation <= new_dwelling(dwelling), not obligation_met.
