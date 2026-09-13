% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2ef8aa82c861d4b6
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(d1), has_pool(d1), rate_calculation(c1, d1).
obligation_met :- pool_treated_as_equivalent_floor(c1).
r1: violation <= dwelling(d1), has_pool(d1), rate_calculation(c1, d1), not obligation_met.
