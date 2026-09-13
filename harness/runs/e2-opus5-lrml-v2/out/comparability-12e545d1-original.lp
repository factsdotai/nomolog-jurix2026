% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2d8855592c66ad02
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met :- exposed_facade(ExposedFacade), background_ventilator_area(ExposedFacade, ExposedFacadeBackgroundVentilatorArea), similar_ventilator_area(ExposedFacadeBackgroundVentilatorArea).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met.
