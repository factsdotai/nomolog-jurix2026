% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: fb93fe366f6edf9c
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- dwelling(Dwelling), exposed_facades(Dwelling, DwellingExposedFacades), DwellingExposedFacades > 1.
obligation_met :- exposed_facade(ExposedFacade), similar_ventilator_area(ExposedFacade).
r1: violation <= dwelling(Dwelling), exposed_facades(Dwelling, DwellingExposedFacades), DwellingExposedFacades > 1, not obligation_met.
r2: exempt_r2 <= dwelling(Dwelling), exposed_facades(Dwelling, DwellingExposedFacades), DwellingExposedFacades = 1.
#conflict violation, exempt_r2.
r2 > r1.
