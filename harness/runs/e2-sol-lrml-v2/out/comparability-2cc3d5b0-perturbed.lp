% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 92409b946f41be58
% n_statements: 1  n_overrides: 0  dangling: 0
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(space), not neg_scope_1, supply_rate_per_person(space, rate).
obligation_met :- rate >= 10.
r1: violation <= occupied_space(space), not neg_scope_1, supply_rate_per_person(space, rate), not obligation_met.
neg_scope_1 :- excessive_pollutants(space).
