applies :- doorset(D), resilient_layer(L, D).
r1: violation <= doorset(D), resilient_layer(L, D), door_height(D, H), layer_height(L, X), X < H.
r2: violation <= doorset(D), resilient_layer(L, D), side_extension_left(L, S), S < 600.
r3: violation <= doorset(D), resilient_layer(L, D), side_extension_right(L, S), S < 600.
