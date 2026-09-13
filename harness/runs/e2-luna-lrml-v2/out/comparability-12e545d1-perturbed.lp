% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 68364ade56464238
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met :- similar_ventilator_area(each_exposed_facade, each_exposed_facade).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met.
