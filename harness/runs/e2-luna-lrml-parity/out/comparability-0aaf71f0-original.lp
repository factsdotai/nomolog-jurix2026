% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: cf70d42d8d74fc61
% term-flattened: nested call -> constant fc_business_area_second_storey_b
% term-flattened: nested call -> constant nfc_business_area_second_storey_b
applies :- building(b), primarily_one_storey(b).
obligation_met :- fc_business_area_second_storey_b <= 200, nfc_business_area_second_storey_b <= 50.
r1: violation <= building(b), primarily_one_storey(b), not obligation_met.
