% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 866fed8906543540
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1.
obligation_met(Dwelling) :- dwelling(Dwelling), similar_ventilator_area(Dwelling).
r1: violation <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount > 1, not obligation_met(Dwelling).
r2: exempt_r2 <= dwelling(Dwelling), exposed_facade_count(Dwelling, DwellingExposedFacadeCount), DwellingExposedFacadeCount = 1.
#conflict violation, exempt_r2.
r2 > r1.
