applies :- fire_doorset(D), door_closer(D).
r1: violation <= fire_doorset(D), door_closer(D), not fusible_link(D).
r2: violation <= fire_doorset(D), door_closer(D), escape_opening(D), fusible_link(D), not complies_c7(D).
