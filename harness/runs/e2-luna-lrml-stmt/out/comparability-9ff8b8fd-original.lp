% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 48a89c6f4f059120
applies :- dwelling(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), fabric_energy_efficiency_rate(Dwelling, DwellingFabricEnergyEfficiencyRate), target_fabric_energy_efficiency_rate(Dwelling, DwellingTargetFabricEnergyEfficiencyRate), DwellingFabricEnergyEfficiencyRate <= DwellingTargetFabricEnergyEfficiencyRate.
r1: violation <= dwelling(Dwelling), not obligation_met(Dwelling).
