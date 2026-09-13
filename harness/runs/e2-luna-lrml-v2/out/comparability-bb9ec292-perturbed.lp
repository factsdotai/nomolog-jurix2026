% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 383961623b212f6f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building).
obligation_met(Building) :- building(Building), primary_energy_rate(Building, BuildingPrimaryEnergyRate), target_primary_energy_rate(Building, BuildingTargetPrimaryEnergyRate), BuildingPrimaryEnergyRate <= BuildingTargetPrimaryEnergyRate, emission_rate(Building, BuildingEmissionRate), target_emission_rate(Building, BuildingTargetEmissionRate), BuildingEmissionRate <= BuildingTargetEmissionRate.
r1: violation <= building(Building), not obligation_met(Building).
