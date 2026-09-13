% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 48a89c6f4f059120
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), fabric_energy_efficiency_rate(Dwelling, DwellingFabricEnergyEfficiencyRate), target_fabric_energy_efficiency_rate(Dwelling, DwellingTargetFabricEnergyEfficiencyRate), DwellingFabricEnergyEfficiencyRate <= DwellingTargetFabricEnergyEfficiencyRate.
r1: violation <= dwelling(Dwelling), not obligation_met(Dwelling).
