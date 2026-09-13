% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 49df9d5b3199297e
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met :- similar_ventilator_area(exposed_facade).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met.
