% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2d6d33f9ac0d2958
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), exposed_facades(Dwelling, DwellingExposedFacades), DwellingExposedFacades > 1.
obligation_met(Dwelling) :- dwelling(Dwelling), exposed_facade(Dwelling, DwellingExposedFacade), similar_ventilator_area(exposed_facade).
r1: violation <= dwelling(Dwelling), exposed_facades(Dwelling, DwellingExposedFacades), DwellingExposedFacades > 1, not obligation_met(Dwelling).
