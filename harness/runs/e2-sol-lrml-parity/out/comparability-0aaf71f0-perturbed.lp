% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9e4dcfcb470f087f
applies :- building(Building), primarily_one_storey(Building).
obligation_met(Building) :- building(Building), fc_business_area_second_storey(Building, BuildingFcBusinessAreaSecondStorey), BuildingFcBusinessAreaSecondStorey <= 200, nfc_business_area_second_storey(Building, BuildingNfcBusinessAreaSecondStorey), BuildingNfcBusinessAreaSecondStorey <= 50.
r1: violation <= building(Building), primarily_one_storey(Building), not obligation_met(Building).
