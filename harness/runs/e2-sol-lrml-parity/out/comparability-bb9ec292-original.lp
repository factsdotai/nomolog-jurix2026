% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 116222d884f77565
applies :- building(Building), emission_rate_measured(Building), primary_energy_rate_measured(Building), target_emission_rate(Building), target_primary_energy_rate(Building).
obligation_met(Building) :- building(Building), primary_energy_rate_measured(Building, BuildingPrimaryEnergyRateMeasured), target_primary_energy_rate(Building, BuildingTargetPrimaryEnergyRate), BuildingPrimaryEnergyRateMeasured <= BuildingTargetPrimaryEnergyRate, emission_rate_measured(Building, BuildingEmissionRateMeasured), target_emission_rate(Building, BuildingTargetEmissionRate), BuildingEmissionRateMeasured <= BuildingTargetEmissionRate.
r1: violation <= building(Building), emission_rate_measured(Building), primary_energy_rate_measured(Building), target_emission_rate(Building), target_primary_energy_rate(Building), not obligation_met(Building).
