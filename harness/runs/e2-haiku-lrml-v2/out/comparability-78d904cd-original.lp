% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 341f1ad84587ba67
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant pool_treated_as_equivalent_floor_dwellin
applies :- dwelling(Dwelling), has_pool(Dwelling).
obligation_met(Dwelling) :- dwelling(Dwelling), primary_energy_rate(Dwelling, DwellingPrimaryEnergyRate), calculate_as_per(DwellingPrimaryEnergyRate, pool_treated_as_equivalent_floor_dwellin).
r1: violation <= dwelling(Dwelling), has_pool(Dwelling), not obligation_met(Dwelling).
