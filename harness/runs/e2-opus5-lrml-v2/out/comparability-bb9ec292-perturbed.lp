% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a46244a4be2cd770
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(Building).
obligation_met(Building) :- building(Building), measured_primary_energy_rate(Building, BuildingMeasuredPrimaryEnergyRate), target_primary_energy_rate(Building, BuildingTargetPrimaryEnergyRate), BuildingMeasuredPrimaryEnergyRate <= BuildingTargetPrimaryEnergyRate, measured_emission_rate(Building, BuildingMeasuredEmissionRate), target_emission_rate(Building, BuildingTargetEmissionRate), BuildingMeasuredEmissionRate <= BuildingTargetEmissionRate.
r1: violation <= building(Building), not obligation_met(Building).
