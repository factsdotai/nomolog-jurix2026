% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 383961623b212f6f
applies :- building(Building).
obligation_met(Building) :- building(Building), primary_energy_rate(Building, BuildingPrimaryEnergyRate), target_primary_energy_rate(Building, BuildingTargetPrimaryEnergyRate), BuildingPrimaryEnergyRate <= BuildingTargetPrimaryEnergyRate, emission_rate(Building, BuildingEmissionRate), target_emission_rate(Building, BuildingTargetEmissionRate), BuildingEmissionRate <= BuildingTargetEmissionRate.
r1: violation <= building(Building), not obligation_met(Building).
