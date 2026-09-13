% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e19ae4043376e59c
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- window(Window), principal_window(Window).
obligation_met_r1(Window) :- window(Window), handle_height(Window, WindowHandleHeight), WindowHandleHeight >= 700, WindowHandleHeight <= 1000.
r1: violation <= window(Window), principal_window(Window), not obligation_met_r1(Window).
obligation_met_r2(Window) :- window(Window), remote_device_height(Window, WindowRemoteDeviceHeight), WindowRemoteDeviceHeight >= 700, WindowRemoteDeviceHeight <= 1000.
r2: violation <= window(Window), principal_window(Window), remote_opening_device(RemoteOpeningDevice), not obligation_met_r2(Window).
r3: exempt_r2 <= window(Window), principal_window(Window), remote_opening_device(RemoteOpeningDevice).
#conflict violation, exempt_r2.
r3 > r1.
