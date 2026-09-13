% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4b99d3ebe4c71009
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met(Dwelling) :- dwelling(Dwelling), exposed_facade(facade, Dwelling), exposed_facade(other_facade, Dwelling), similar_ventilator_area(facade, other_facade).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met(Dwelling).
