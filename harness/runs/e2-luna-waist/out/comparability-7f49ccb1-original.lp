applies :- doorset(D).
r1: violation <= doorset(D), not layer_ok(D).
layer_ok(D) :- resilient_layer(L, D), door_height(D, H), layer_height(L, LH), LH >= H, side_extension_left(L, Left), Left >= 600, side_extension_right(L, Right), Right >= 600.
