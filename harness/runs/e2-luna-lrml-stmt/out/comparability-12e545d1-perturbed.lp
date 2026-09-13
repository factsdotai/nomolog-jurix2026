% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 082e58aed035eab2
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met(Dwelling) :- dwelling(Dwelling), exposed_facades(Dwelling, DwellingExposedFacades), similar_ventilator_area(DwellingExposedFacades).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met(Dwelling).
