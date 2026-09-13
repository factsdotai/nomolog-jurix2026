% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f432780f9037be13
% n_statements: 3  n_overrides: 2  dangling: 0
% term-flattened: nested call -> constant connection_cost_new_dwelling
% unit-unverified: '2000 gbp' passed through as 2000
applies :- new_dwelling(NewDwelling), gigabit_connection(GigabitConnection).
obligation_met(NewDwelling) :- new_dwelling(NewDwelling), gigabit_connection(NewDwelling).
r1: violation <= new_dwelling(NewDwelling), gigabit_connection(GigabitConnection), not obligation_met(NewDwelling).
r2: exempt_r2 <= new_dwelling(NewDwelling), connection_cost_new_dwelling >= 2000.
#conflict violation, exempt_r2.
r2 > r1.
r3: exempt_r3 <= new_dwelling(NewDwelling), operator_declined(NewDwelling).
#conflict violation, exempt_r3.
r3 > r1.
