applies :- door_entry_control(C).
r1: violation <= door_entry_control(C), mounting_height(C, H), H < 900.
r2: violation <= door_entry_control(C), mounting_height(C, H), H > 1000.
r3: violation <= door_entry_control(C), projecting_corner(K), corner_distance(C, K, D), D < 300.
