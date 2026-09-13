% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6ef1e3eb9734003a
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), has_pool(Dwelling), rate_calculation(rate_calculation, Dwelling).
obligation_met :- pool_treated_as_equivalent_floor(rate_calculation).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), rate_calculation(rate_calculation, Dwelling), not obligation_met.
