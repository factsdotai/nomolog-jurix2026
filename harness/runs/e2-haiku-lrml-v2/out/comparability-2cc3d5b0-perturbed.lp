% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fc1c847214672c89
% n_statements: 2  n_overrides: 1  dangling: 0
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(OccupiedSpace).
obligation_met(OccupiedSpace) :- occupied_space(OccupiedSpace), supply_rate_per_person(OccupiedSpace, OccupiedSpaceSupplyRatePerPerson), OccupiedSpaceSupplyRatePerPerson >= 10.
r1: violation <= occupied_space(OccupiedSpace), not obligation_met(OccupiedSpace).
r2: exempt_r2 <= occupied_space(OccupiedSpace), excessive_pollutants(OccupiedSpace).
r3: exempt_r2 <= occupied_space(OccupiedSpace), tobacco_smoke(OccupiedSpace).
#conflict violation, exempt_r2.
r2 > r1.
r3 > r1.
