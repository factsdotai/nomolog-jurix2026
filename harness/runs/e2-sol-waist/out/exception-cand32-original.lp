applies :- principal_window(W).
r1: violation <= principal_window(W), not principal_window_access_ok.
principal_window_access_ok :- principal_window(W), handle_height(W, H), H >= 700, H <= 1000.
principal_window_access_ok :- principal_window(W), remote_device_height(W, H), H >= 700, H <= 1000.
