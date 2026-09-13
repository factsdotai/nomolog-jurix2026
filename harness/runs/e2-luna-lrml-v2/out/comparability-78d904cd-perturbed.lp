% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0b07700c555a48cc
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), has_pool(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), pool_treated_as_equivalent_floor(Dwelling).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), not obligation_met(Dwelling).
