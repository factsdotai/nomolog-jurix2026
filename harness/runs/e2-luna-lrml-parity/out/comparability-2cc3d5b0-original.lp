% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9e18888eaa1eddc1
% term-flattened: nested call -> constant supply_rate_per_person_occupied_space
% unit-unverified: '10 litres per second per person' passed through as 10
applies :- occupied_space(OccupiedSpace).
obligation_met(OccupiedSpace) :- occupied_space(OccupiedSpace), excessive_pollutants(OccupiedSpace).
obligation_met(OccupiedSpace) :- occupied_space(OccupiedSpace), supply_rate_per_person_occupied_space >= 10.
r1: violation <= occupied_space(OccupiedSpace), not obligation_met(OccupiedSpace).
