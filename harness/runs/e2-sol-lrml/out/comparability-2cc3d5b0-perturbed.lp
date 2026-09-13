% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 92409b946f41be58
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(space), not neg_scope_1, supply_rate_per_person(space, rate).
obligation_met :- rate >= 10.
r1: violation <= occupied_space(space), not neg_scope_1, supply_rate_per_person(space, rate), not obligation_met.
neg_scope_1 :- excessive_pollutants(space).
