% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 54fa471f40f2a8d6
applies :- dwelling(Dwelling), has_pool(Dwelling), rate_calculation(calculation, Dwelling).
obligation_met :- pool_treated_as_equivalent_floor(calculation).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), rate_calculation(calculation, Dwelling), not obligation_met.
