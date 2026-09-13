% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e574b48b42a86436
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(building), primary_energy_rate_measured(building, primary_energy_rate), emission_rate_measured(building, emission_rate), target_primary_energy_rate(building, target_primary_energy_rate), target_emission_rate(building, target_emission_rate).
obligation_met :- primary_energy_rate <= target_primary_energy_rate, emission_rate <= target_emission_rate.
r1: violation <= building(building), primary_energy_rate_measured(building, primary_energy_rate), emission_rate_measured(building, emission_rate), target_primary_energy_rate(building, target_primary_energy_rate), target_emission_rate(building, target_emission_rate), not obligation_met.
