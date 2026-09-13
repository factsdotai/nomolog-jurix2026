% Building primarily one storey: business-related areas on second-storey level
% <= 200 m2 fire-compartmented, <= 50 m2 non-fire-compartmented.
% Modeling: totals as measured properties (summation folded into the survey).
applies :- building(B), primarily_one_storey(B).
r1: violation <= building(B), primarily_one_storey(B), fc_business_area_second_storey(B, A), A > 200.
r2: violation <= building(B), primarily_one_storey(B), nfc_business_area_second_storey(B, A), A > 50.
