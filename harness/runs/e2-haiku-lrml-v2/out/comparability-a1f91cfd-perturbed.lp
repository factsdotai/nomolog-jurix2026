% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b106fee9d50d9e16
% n_statements: 2  n_overrides: 1  dangling: 0
% override-inert: r1 has no violation rules
applies :- building(Building), dwelling_count(Building, BuildingDwellingCount), BuildingDwellingCount > 1.
% permission: no violation rule (policy P4)
