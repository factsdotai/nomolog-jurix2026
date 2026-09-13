% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ffd496c33134a131
% term-flattened: nested call -> constant pool_treated_as_equivalent_floor_dwellin
applies :- dwelling(Dwelling), has_pool(Dwelling), rate_calculation(rate_calculation, Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), calculated_as_if(Dwelling, pool_treated_as_equivalent_floor_dwellin).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), rate_calculation(rate_calculation, Dwelling), not obligation_met(Dwelling).
