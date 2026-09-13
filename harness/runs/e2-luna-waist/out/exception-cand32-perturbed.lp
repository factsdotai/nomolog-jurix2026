applies :- principal_window(W).
r1: violation <= principal_window(W), handle_height(W, H), H < 700.
r2: violation <= principal_window(W), handle_height(W, H), H > 1000.
r3: exempt <= principal_window(W), remote_device_height(W, R), R >= 700, R <= 1000.
#conflict violation, exempt.
r3 > r1.
r3 > r2.
