applies :- principal_window(W).
r1: violation <= principal_window(W), not handle_ok(W).
handle_ok(W) :- handle_height(W, H), H >= 700, H <= 1000.
handle_ok(W) :- remote_device_height(W, D), D >= 700, D <= 1000.
