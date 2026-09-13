% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a7f85dff1b1f252c
% term-flattened: nested call -> constant connection_cost_new_dwelling_cost
% unit-unverified: '2000 GBP' passed through as 2000
applies :- new_dwelling(NewDwelling), connection_cost_new_dwelling_cost <= 2000, not neg_scope_1.
obligation_met(NewDwelling) :- new_dwelling(NewDwelling), provide_gigabit_connection(NewDwelling).
r1: violation <= new_dwelling(NewDwelling), connection_cost_new_dwelling_cost <= 2000, not neg_scope_1, not obligation_met(NewDwelling).
neg_scope_1 :- new_dwelling(NewDwelling), operator_declined(NewDwelling).
