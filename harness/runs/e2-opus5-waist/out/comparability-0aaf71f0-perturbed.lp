% permission with ceilings, encoded as its dual obligation (spec section 6)
applies :- building(B), primarily_one_storey(B).
r1: violation <= building(B), primarily_one_storey(B), fc_business_area_second_storey(B, A), A > 200.
r2: violation <= building(B), primarily_one_storey(B), nfc_business_area_second_storey(B, A), A > 50.
