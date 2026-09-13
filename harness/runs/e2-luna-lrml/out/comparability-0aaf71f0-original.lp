% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 077569c91bd2c62d
% term-flattened: nested call -> constant fc_business_area_second_storey_building
% term-flattened: nested call -> constant nfc_business_area_second_storey_building
applies :- building(building), primarily_one_storey(building).
obligation_met :- fc_business_area_second_storey_building <= 200, nfc_business_area_second_storey_building <= 50.
r1: violation <= building(building), primarily_one_storey(building), not obligation_met.
