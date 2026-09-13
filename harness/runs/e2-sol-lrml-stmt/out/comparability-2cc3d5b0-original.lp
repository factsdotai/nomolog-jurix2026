% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f0a2522b7410d4c7
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(Space).
obligation_met(Space) :- excessive_pollutants(Space).
obligation_met(Space) :- supply_rate_per_person(Space, SpaceSupplyRatePerPerson), SpaceSupplyRatePerPerson >= 10.
r1: violation <= occupied_space(Space), not obligation_met(Space).
