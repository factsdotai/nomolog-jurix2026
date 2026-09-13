% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8430f0462e5b00b7
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant pool_treated_as_equivalent_floor_dwellin
% term-flattened: nested call -> constant pool_treated_as_equivalent_floor_dwellin
% term-flattened: nested call -> constant pool_treated_as_equivalent_floor_dwellin
applies :- dwelling(Dwelling), has_pool(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), primary_energy_rate(Dwelling, DwellingPrimaryEnergyRate), calculate_as_if(DwellingPrimaryEnergyRate, pool_treated_as_equivalent_floor_dwellin), emission_rate(Dwelling, DwellingEmissionRate), calculate_as_if(DwellingEmissionRate, pool_treated_as_equivalent_floor_dwellin), fabric_energy_efficiency_rate(Dwelling, DwellingFabricEnergyEfficiencyRate), calculate_as_if(DwellingFabricEnergyEfficiencyRate, pool_treated_as_equivalent_floor_dwellin).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), not obligation_met(Dwelling).
