% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f2f381f214d90156
applies :- dwelling(d), has_pool(d), rate_calculation(c, d).
obligation_met :- pool_treated_as_equivalent_floor(c).
r1: violation <= dwelling(d), has_pool(d), rate_calculation(c, d), not obligation_met.
