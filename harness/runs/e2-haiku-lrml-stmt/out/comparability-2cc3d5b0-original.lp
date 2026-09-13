% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 02793843f579c796
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(OccupiedSpace), not neg_scope_1.
obligation_met(OccupiedSpace) :- occupied_space(OccupiedSpace), supply_rate_per_person(OccupiedSpace, OccupiedSpaceSupplyRatePerPerson), OccupiedSpaceSupplyRatePerPerson >= 10.
r1: violation <= occupied_space(OccupiedSpace), not neg_scope_1, not obligation_met(OccupiedSpace).
neg_scope_1 :- excessive_pollutants(ExcessivePollutants).
