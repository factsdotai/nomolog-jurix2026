% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 5b01d4edd04f907e
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant fc_business_area_second_storey_building
% term-flattened: nested call -> constant nfc_business_area_second_storey_building
applies :- building(Building), primarily_one_storey(Building).
obligation_met :- fc_business_area_second_storey_building <= 200, nfc_business_area_second_storey_building <= 50.
r1: violation <= building(Building), primarily_one_storey(Building), not obligation_met.
