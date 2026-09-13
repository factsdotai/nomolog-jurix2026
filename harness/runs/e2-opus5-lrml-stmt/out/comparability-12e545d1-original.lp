% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 78231b63a5758361
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met :- exposed_facade(ExposedFacade), ventilator_area(ExposedFacade, ExposedFacadeVentilatorArea), similar_ventilator_area(ExposedFacadeVentilatorArea).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met.
