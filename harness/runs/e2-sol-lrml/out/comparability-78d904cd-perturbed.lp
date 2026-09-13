% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 2ef8aa82c861d4b6
applies :- dwelling(d1), has_pool(d1), rate_calculation(c1, d1).
obligation_met :- pool_treated_as_equivalent_floor(c1).
r1: violation <= dwelling(d1), has_pool(d1), rate_calculation(c1, d1), not obligation_met.
