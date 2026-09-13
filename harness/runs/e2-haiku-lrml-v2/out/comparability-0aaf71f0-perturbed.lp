% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f493cfe1d160c91f
% n_statements: 2  n_overrides: 0  dangling: 0
applies :- building(Building), primarily_one_storey(Building).
obligation_met_r1(Building) :- building(Building), fc_business_area_second_storey(Building, BuildingFcBusinessAreaSecondStorey), BuildingFcBusinessAreaSecondStorey <= 200.
r1: violation <= building(Building), primarily_one_storey(Building), not obligation_met_r1(Building).
obligation_met_r2(Building) :- building(Building), nfc_business_area_second_storey(Building, BuildingNfcBusinessAreaSecondStorey), BuildingNfcBusinessAreaSecondStorey <= 50.
r2: violation <= building(Building), primarily_one_storey(Building), not obligation_met_r2(Building).
