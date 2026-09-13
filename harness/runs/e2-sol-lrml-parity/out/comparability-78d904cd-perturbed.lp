% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 32afdf2665ddc07f
applies :- dwelling(dwelling), has_pool(dwelling), rate_calculation(calculation, dwelling).
obligation_met :- pool_treated_as_equivalent_floor(calculation).
r1: violation <= dwelling(dwelling), has_pool(dwelling), rate_calculation(calculation, dwelling), not obligation_met.
