% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 0b07700c555a48cc
applies :- dwelling(Dwelling), has_pool(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), pool_treated_as_equivalent_floor(Dwelling).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), not obligation_met(Dwelling).
