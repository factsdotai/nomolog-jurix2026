applies :- multi_dwelling_building(B), dwelling_count(B, N), N > 1.
r1: violation <= multi_dwelling_building(B), dwelling_count(B, N), N > 1, not targets_ok(B).
targets_ok(B) :- average_target_rates(B).
targets_ok(B) :- individual_target_rates(B).
