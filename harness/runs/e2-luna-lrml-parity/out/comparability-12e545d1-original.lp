% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 40815f748b12c0f4
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met(Dwelling) :- exposed_facade(ExposedFacade), dwelling(Dwelling), similar_ventilator_area(ExposedFacade, Dwelling).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met(Dwelling).
