% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8657ca3d47e1d1f3
% term-flattened: nested call -> constant fc_business_area_second_storey_building
% term-flattened: nested call -> constant nfc_business_area_second_storey_building
applies :- building(Building), primarily_one_storey(Building).
obligation_met :- fc_business_area_second_storey_building <= 200, nfc_business_area_second_storey_building <= 50.
r1: violation <= building(Building), primarily_one_storey(Building), not obligation_met.
