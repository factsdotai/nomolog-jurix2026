% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: cf02f8ec2e0f32b2
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), has_pool(Dwelling), rate_calculation(RateCalculation).
obligation_met(RateCalculation) :- rate_calculation(RateCalculation), pool_treated_as_equivalent_floor(RateCalculation).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), rate_calculation(RateCalculation), not obligation_met(RateCalculation).
