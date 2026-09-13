% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 780a1b87a9fb1eba
applies :- building(Building), emission_rate_measured(Building, x), primary_energy_rate_measured(Building, y), target_emission_rate(Building, z), target_primary_energy_rate(Building, w).
obligation_met :- y <= w, x <= z.
r1: violation <= building(Building), emission_rate_measured(Building, x), primary_energy_rate_measured(Building, y), target_emission_rate(Building, z), target_primary_energy_rate(Building, w), not obligation_met.
