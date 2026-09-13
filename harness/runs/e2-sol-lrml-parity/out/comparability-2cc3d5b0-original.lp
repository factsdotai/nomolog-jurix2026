% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 369dadba874bd1f3
% term-flattened: nested call -> constant supply_rate_per_person_space
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(space).
obligation_met :- excessive_pollutants(space).
obligation_met :- supply_rate_per_person_space >= 10.
r1: violation <= occupied_space(space), not obligation_met.
