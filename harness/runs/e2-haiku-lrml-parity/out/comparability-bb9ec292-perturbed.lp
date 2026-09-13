% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 035b0d90556f80ad
% term-flattened: nested call -> constant primary_energy_rate_measured_building
% term-flattened: nested call -> constant target_primary_energy_rate_building
% term-flattened: nested call -> constant emission_rate_measured_building
% term-flattened: nested call -> constant target_emission_rate_building
applies :- building(Building), emission_rate_measured(Building, ), primary_energy_rate_measured(Building, ).
obligation_met :- primary_energy_rate_measured_building <= target_primary_energy_rate_building, emission_rate_measured_building <= target_emission_rate_building.
r1: violation <= building(Building), emission_rate_measured(Building, ), primary_energy_rate_measured(Building, ), not obligation_met.
