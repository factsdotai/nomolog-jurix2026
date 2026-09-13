% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5413a0275f73c21e
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(OccupiedSpace).
obligation_met(OccupiedSpace) :- occupied_space(OccupiedSpace), supply_rate_per_person(OccupiedSpace, OccupiedSpaceSupplyRatePerPerson), OccupiedSpaceSupplyRatePerPerson >= 10.
obligation_met(OccupiedSpace) :- occupied_space(OccupiedSpace), excessive_pollutants(OccupiedSpace).
r1: violation <= occupied_space(OccupiedSpace), not obligation_met(OccupiedSpace).
