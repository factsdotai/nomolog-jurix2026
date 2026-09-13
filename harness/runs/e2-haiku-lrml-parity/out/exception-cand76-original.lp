% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 52c93e29ce117030
% unit-unverified: '2000 gbp' passed through as 2000
applies :- new_dwelling(NewDwelling), not neg_scope_1.
obligation_met(NewDwelling) :- new_dwelling(NewDwelling), gigabit_capable_connection(NewDwelling).
r1: violation <= new_dwelling(NewDwelling), not neg_scope_1, not obligation_met(NewDwelling).
neg_scope_1 :- connection_cost > 2000.
neg_scope_1 :- new_dwelling(NewDwelling), operator_declined(NewDwelling).
