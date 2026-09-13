% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 352a58a15779cd12
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met(Dwelling) :- dwelling(Dwelling), exposed_facade(Dwelling, DwellingExposedFacade), similar_ventilator_area(DwellingExposedFacade).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met(Dwelling).
