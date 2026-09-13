% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 40815f748b12c0f4
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met(Dwelling) :- exposed_facade(ExposedFacade), dwelling(Dwelling), similar_ventilator_area(ExposedFacade, Dwelling).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met(Dwelling).
