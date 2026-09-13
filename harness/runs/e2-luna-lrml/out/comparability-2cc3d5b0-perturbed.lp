% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4ab23fc55a1d1d17
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- not neg_scope_1.
obligation_met :- supply_rate_per_person >= 10.
r1: violation <= not neg_scope_1, not obligation_met.
neg_scope_1 :- excessive_pollutants(occupied_space).
