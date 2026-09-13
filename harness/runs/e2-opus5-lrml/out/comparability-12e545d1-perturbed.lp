% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9a28da086e9cfa8a
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met :- exposed_facade(ExposedFacade), background_ventilator_area(ExposedFacade, ExposedFacadeBackgroundVentilatorArea), similar_ventilator_area(ExposedFacadeBackgroundVentilatorArea).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met.
