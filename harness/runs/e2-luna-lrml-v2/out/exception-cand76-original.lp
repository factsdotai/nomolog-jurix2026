% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8cc85b5ddae9a793
% n_statements: 2  n_overrides: 1  dangling: 0
% unit-unverified: '2000 GBP per dwelling' passed through as 2000
applies :- new_dwelling(NewDwelling).
obligation_met(NewDwelling) :- new_dwelling(NewDwelling), gigabit_capable_public_electronic_communications_network_connection(GigabitCapablePublicElectronicCommunicationsNetworkConnection).
r1: violation <= new_dwelling(NewDwelling), not obligation_met(NewDwelling).
r2: exempt_r2 <= new_dwelling(NewDwelling), connection_cost > 2000.
r3: exempt_r2 <= new_dwelling(NewDwelling), operator_declined(NewDwelling).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
