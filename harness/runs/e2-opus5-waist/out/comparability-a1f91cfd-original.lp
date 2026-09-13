% permission granting an alternative route: encoded as its dual obligation
% (either target-rate route satisfies)
applies :- multi_dwelling_building(B).
r1: violation <= multi_dwelling_building(B), not target_rates_ok(B).
target_rates_ok(B) :- average_target_rates(B).
target_rates_ok(B) :- individual_target_rates(B).
