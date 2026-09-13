% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f2f381f214d90156
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(d), has_pool(d), rate_calculation(c, d).
obligation_met :- pool_treated_as_equivalent_floor(c).
r1: violation <= dwelling(d), has_pool(d), rate_calculation(c, d), not obligation_met.
