% Dwelling with pool: rates calculated as if pool area were floor of same
% U-value as surround. open-texture: pool_treated_as_equivalent_floor.
applies :- dwelling(D), has_pool(D).
r1: violation <= dwelling(D), has_pool(D), rate_calculation(C, D), not pool_treated_as_equivalent_floor(C).
