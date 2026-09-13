% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 28ed6fc2f5545eac
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- building(Building).
obligation_met_r1(Building) :- building(Building), primary_energy_rate_measured(Building, BuildingPrimaryEnergyRateMeasured), target_primary_energy_rate(Building, BuildingTargetPrimaryEnergyRate), BuildingPrimaryEnergyRateMeasured <= BuildingTargetPrimaryEnergyRate.
r1: violation <= building(Building), not obligation_met_r1(Building).
obligation_met_r2(Building) :- building(Building), emission_rate_measured(Building, BuildingEmissionRateMeasured), target_emission_rate(Building, BuildingTargetEmissionRate), BuildingEmissionRateMeasured <= BuildingTargetEmissionRate.
r2: violation <= building(Building), not obligation_met_r2(Building).
