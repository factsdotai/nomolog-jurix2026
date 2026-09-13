applies :- multi_dwelling_building(B).
r1: violation <= multi_dwelling_building(B), not individual_target_rates(B).
r2: exempt <= multi_dwelling_building(B), average_target_rates(B).
#conflict violation, exempt.
r2 > r1.
