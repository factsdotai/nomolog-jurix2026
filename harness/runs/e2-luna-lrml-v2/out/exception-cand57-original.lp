% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6c49bba83c6236c4
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- stair(Stair), car_park(CarPark), covered_car_park(CarPark), connects_to(Stair, CarPark), not neg_scope_1.
r1: violation <= stair(Stair), car_park(CarPark), covered_car_park(CarPark), connects_to(Stair, CarPark), not neg_scope_1.
neg_scope_1 :- car_park(CarPark), open_sided(CarPark).
