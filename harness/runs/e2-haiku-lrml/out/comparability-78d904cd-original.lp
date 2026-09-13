% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6e11feab42e696f3
applies :- dwelling(Dwelling), has_pool(Dwelling), pool_treated_as_equivalent_floor(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), rate_calculation(Dwelling, equivalent_floor_area).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), pool_treated_as_equivalent_floor(Dwelling), not obligation_met(Dwelling).
