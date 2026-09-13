% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b06692ef20428ebe
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- window(Window), principal_living_area(Window).
obligation_met(Window) :- window(Window), handle_height(Window, WindowHandleHeight), WindowHandleHeight >= 700, WindowHandleHeight <= 1000.
r1: violation <= window(Window), principal_living_area(Window), not obligation_met(Window).
r2: exempt_r2 <= window(Window), principal_living_area(Window), fitted_with_remote_opening_device(Window), remote_device_height(Window, WindowRemoteDeviceHeight), WindowRemoteDeviceHeight >= 700, WindowRemoteDeviceHeight <= 1000.
#conflict violation, exempt_r2.
r2 > r1.
