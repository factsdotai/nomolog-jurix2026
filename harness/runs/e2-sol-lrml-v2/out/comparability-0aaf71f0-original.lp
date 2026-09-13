% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 7f9b3942bd7c3969
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building(b), primarily_one_storey(b), fc_business_area_second_storey(b, fc_area), nfc_business_area_second_storey(b, nfc_area).
obligation_met :- fc_area <= 200, nfc_area <= 50.
r1: violation <= building(b), primarily_one_storey(b), fc_business_area_second_storey(b, fc_area), nfc_business_area_second_storey(b, nfc_area), not obligation_met.
