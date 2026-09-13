% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 820dd902adb57c5b
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(b), primarily_one_storey(b), fc_business_area_second_storey(b, fc), nfc_business_area_second_storey(b, nfc).
obligation_met :- fc <= 200, nfc <= 50.
r1: violation <= building(b), primarily_one_storey(b), fc_business_area_second_storey(b, fc), nfc_business_area_second_storey(b, nfc), not obligation_met.
