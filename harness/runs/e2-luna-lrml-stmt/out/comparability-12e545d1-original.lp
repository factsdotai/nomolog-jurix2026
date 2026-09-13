% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 00e135791196befc
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met :- exposed_facade(ExposedFacade), similar_ventilator_area(ExposedFacade, ExposedFacade).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met.
