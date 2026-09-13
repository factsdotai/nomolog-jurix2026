% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b65d0801a685545b
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(NewDwelling).
obligation_met(NewDwelling) :- new_dwelling(NewDwelling), gigabit_connection(NewDwelling).
obligation_met(NewDwelling) :- new_dwelling(NewDwelling), connection_cost(NewDwelling, NewDwellingConnectionCost), NewDwellingConnectionCost > 2000.
obligation_met(NewDwelling) :- new_dwelling(NewDwelling), operator_declined(NewDwelling).
r1: violation <= new_dwelling(NewDwelling), not obligation_met(NewDwelling).
