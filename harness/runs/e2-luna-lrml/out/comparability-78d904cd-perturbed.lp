% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9a82601d301d2378
applies :- dwelling(d1), has_pool(d1).
obligation_met :- rate_calculation(c1, d1), pool_treated_as_equivalent_floor(c1).
r1: violation <= dwelling(d1), has_pool(d1), not obligation_met.
