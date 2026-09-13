% Multi-dwelling building: average target rates MAY be calculated as an
% alternative to individual rates. Permission encoded as its dual obligation
% (target rates exist in one of the two permitted forms), per spec section 6.
applies :- multi_dwelling_building(B).
target_rates_ok(B) :- individual_target_rates(B).
target_rates_ok(B) :- average_target_rates(B).
r1: violation <= multi_dwelling_building(B), not target_rates_ok(B).
