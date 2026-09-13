% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 34210a9d5419364b
applies :- building(Building).
obligation_met(Building) :- building(Building), primary_energy_rate_measured(Building, BuildingPrimaryEnergyRateMeasured), target_primary_energy_rate(Building, BuildingTargetPrimaryEnergyRate), BuildingPrimaryEnergyRateMeasured <= BuildingTargetPrimaryEnergyRate, emission_rate_measured(Building, BuildingEmissionRateMeasured), target_emission_rate(Building, BuildingTargetEmissionRate), BuildingEmissionRateMeasured <= BuildingTargetEmissionRate.
r1: violation <= building(Building), not obligation_met(Building).
