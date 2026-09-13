% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: cf7c4294bd1b59ff
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), has_pool(Dwelling), pool_treated_as_equivalent_floor(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), primary_energy_rate(Dwelling, DwellingPrimaryEnergyRate), rate_calculation(DwellingPrimaryEnergyRate, Dwelling), emission_rate(Dwelling, DwellingEmissionRate), rate_calculation(DwellingEmissionRate, Dwelling), fabric_energy_efficiency_rate(Dwelling, DwellingFabricEnergyEfficiencyRate), rate_calculation(DwellingFabricEnergyEfficiencyRate, Dwelling), pool_area(Dwelling, DwellingPoolArea), equivalent_floor_area(Dwelling, DwellingEquivalentFloorArea), area_replaced_with_equivalent_floor(DwellingPoolArea, DwellingEquivalentFloorArea).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), pool_treated_as_equivalent_floor(Dwelling), not obligation_met(Dwelling).
