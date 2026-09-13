% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 820dd902adb57c5b
applies :- building(b), primarily_one_storey(b), fc_business_area_second_storey(b, fc), nfc_business_area_second_storey(b, nfc).
obligation_met :- fc <= 200, nfc <= 50.
r1: violation <= building(b), primarily_one_storey(b), fc_business_area_second_storey(b, fc), nfc_business_area_second_storey(b, nfc), not obligation_met.
