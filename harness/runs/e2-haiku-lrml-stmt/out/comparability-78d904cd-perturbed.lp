% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: abcd14a482fcb57c
applies :- dwelling(Dwelling), has_pool(Dwelling), pool_treated_as_equivalent_floor(Dwelling).
obligation_met :- rate_calculation(dwelling_primary_energy_rate, equivalent_floor), rate_calculation(dwelling_emission_rate, equivalent_floor), rate_calculation(dwelling_fabric_energy_efficiency_rate, equivalent_floor).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), pool_treated_as_equivalent_floor(Dwelling), not obligation_met.
