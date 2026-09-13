% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5beec23209890a66
applies :- building(Building), primary_energy_rate_measured(Building, x), emission_rate_measured(Building, y), target_primary_energy_rate(Building, z), target_emission_rate(Building, w).
obligation_met :- x <= z, y <= w.
r1: violation <= building(Building), primary_energy_rate_measured(Building, x), emission_rate_measured(Building, y), target_primary_energy_rate(Building, z), target_emission_rate(Building, w), not obligation_met.
