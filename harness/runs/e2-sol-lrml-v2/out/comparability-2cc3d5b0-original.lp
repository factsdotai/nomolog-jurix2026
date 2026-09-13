% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c6bfb4a3c2c33b63
% n_statements: 1  n_overrides: 0  dangling: 0
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(space), not neg_scope_1.
obligation_met :- supply_rate_per_person(space, 10).
r1: violation <= occupied_space(space), not neg_scope_1, not obligation_met.
neg_scope_1 :- excessive_pollutants(space).
