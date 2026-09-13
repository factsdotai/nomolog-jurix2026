applies :- dwelling(D), has_pool(D), pool_treated_as_equivalent_floor(D).
r1: violation <= dwelling(D), has_pool(D), pool_treated_as_equivalent_floor(D), rate_calculation(C, D), not calculation_ok(C).
calculation_ok(C) :- primary_energy_rate_calculated_as_equivalent(C), emission_rate_calculated_as_equivalent(C), fabric_energy_efficiency_calculated_as_equivalent(C).
