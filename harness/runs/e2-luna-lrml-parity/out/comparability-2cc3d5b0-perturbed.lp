% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c60c622640db854e
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(OccupiedSpace).
obligation_met :- supply_rate_per_person = 10.
obligation_met :- excessive_pollutants(ExcessivePollutants).
r1: violation <= occupied_space(OccupiedSpace), not obligation_met.
