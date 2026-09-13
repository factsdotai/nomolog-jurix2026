% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3ef585ea48b379df
applies :- dwelling(Dwelling), has_pool(Dwelling), rate_calculation(RateCalculation).
obligation_met(RateCalculation) :- rate_calculation(RateCalculation), pool_treated_as_equivalent_floor(RateCalculation).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), rate_calculation(RateCalculation), not obligation_met(RateCalculation).
