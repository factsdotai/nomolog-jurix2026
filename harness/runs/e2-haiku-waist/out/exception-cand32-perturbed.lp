applies :- principal_window(W).
r1: violation <= principal_window(W), not handle_ok(W).
r2: exempt <= principal_window(W), remote_device_height(W, H), H >= 700, H <= 1000.
#conflict violation, exempt.
r2 > r1.
handle_ok(W) :- handle_height(W, H), H >= 700, H <= 1000.
