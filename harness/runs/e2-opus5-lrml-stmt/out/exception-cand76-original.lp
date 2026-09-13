% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5d37820c82af0989
% unit-unverified: '2000 gbp' passed through as 2000
applies :- dwelling(Dwelling), new_dwelling(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), gigabit_connection(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), connection_cost(Dwelling, DwellingConnectionCost), DwellingConnectionCost > 2000.
obligation_met(Dwelling) :- dwelling(Dwelling), operator_declined(Dwelling).
r1: violation <= dwelling(Dwelling), new_dwelling(Dwelling), not obligation_met(Dwelling).
