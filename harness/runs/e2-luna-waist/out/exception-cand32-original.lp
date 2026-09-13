applies :- principal_window(W).
r1: violation <= principal_window(W), not handle_in_range(W), not remote_device_in_range(W).
handle_in_range(W) :- principal_window(W), handle_height(W, H), H >= 700, H <= 1000.
remote_device_in_range(W) :- principal_window(W), remote_device_height(W, H), H >= 700, H <= 1000.
