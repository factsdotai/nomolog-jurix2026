% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8f3242d00336d719
applies :- dwelling(dwelling), has_pool(dwelling), rate_calculation(rate_calculation, dwelling).
obligation_met :- pool_treated_as_equivalent_floor(rate_calculation).
r1: violation <= dwelling(dwelling), has_pool(dwelling), rate_calculation(rate_calculation, dwelling), not obligation_met.
