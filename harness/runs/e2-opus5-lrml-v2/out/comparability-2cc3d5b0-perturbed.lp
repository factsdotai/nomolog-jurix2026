% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2df7d698a32d4d8f
% n_statements: 1  n_overrides: 0  dangling: 0
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(OccupiedSpace), not neg_scope_1.
obligation_met(OccupiedSpace) :- occupied_space(OccupiedSpace), supply_rate_per_person(OccupiedSpace, OccupiedSpaceSupplyRatePerPerson), OccupiedSpaceSupplyRatePerPerson >= 10.
r1: violation <= occupied_space(OccupiedSpace), not neg_scope_1, not obligation_met(OccupiedSpace).
neg_scope_1 :- occupied_space(OccupiedSpace), excessive_pollutants(OccupiedSpace).
