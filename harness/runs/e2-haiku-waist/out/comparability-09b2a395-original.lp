applies :- door_entry_control(D).
r1: violation <= door_entry_control(D), mounting_height(D, H), H < 900.
r2: violation <= door_entry_control(D), mounting_height(D, H), H > 1000.
r3: violation <= door_entry_control(D), projecting_corner(K), corner_distance(D, K, Dist), Dist < 300.
