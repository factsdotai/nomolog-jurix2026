applies :- doorset(D).
r1: violation <= doorset(D), not resilient_layer_ok(D).
resilient_layer_ok(D) :- resilient_layer(L, D), layer_height(L, H), door_height(D, Dh), H >= Dh, side_extension_left(L, Sl), Sl >= 600, side_extension_right(L, Sr), Sr >= 600.
