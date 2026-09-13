applies :- doorset(D), resilient_layer(L, D).
r1: violation <= doorset(D), resilient_layer(L, D), not height_ok(L, D).
r2: violation <= doorset(D), resilient_layer(L, D), not extension_ok(L).
height_ok(L, D) :- door_height(D, H), layer_height(L, H).
extension_ok(L) :- side_extension_left(L, E1), E1 >= 600, side_extension_right(L, E2), E2 >= 600.
