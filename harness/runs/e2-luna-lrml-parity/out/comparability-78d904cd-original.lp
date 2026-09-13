% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ae642cb3e7ebc128
applies :- dwelling(d), has_pool(d).
obligation_met :- pool_treated_as_equivalent_floor(d), rate_calculation(primary_energy_rate, d), rate_calculation(emission_rate, d), rate_calculation(fabric_energy_efficiency_rate, d).
r1: violation <= dwelling(d), has_pool(d), not obligation_met.
