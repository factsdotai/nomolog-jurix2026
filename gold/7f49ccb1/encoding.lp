% Resilient layer: full height of the door and 600mm either side of the doorset.
applies :- doorset(D), resilient_layer(L, D).
r1: violation <= resilient_layer(L, D), layer_height(L, H), door_height(D, DH), H < DH.
r2: violation <= resilient_layer(L, D), side_extension_left(L, X), X < 600.
r3: violation <= resilient_layer(L, D), side_extension_right(L, X), X < 600.
