applies :- doorset(D), resilient_layer(L, D), door_height(D, H).
r1: violation <= doorset(D), resilient_layer(L, D), door_height(D, H), layer_height(L, LH), LH < H.
r2: violation <= doorset(D), resilient_layer(L, D), side_extension_left(L, E), E < 600.
r3: violation <= doorset(D), resilient_layer(L, D), side_extension_right(L, E), E < 600.
