% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4b84a110cf1b2a73
applies :- window(Window), principal_living_area_window(Window).
obligation_met(Window) :- window(Window), handle_height(Window, WindowHandleHeight), WindowHandleHeight >= 700, WindowHandleHeight <= 1000.
obligation_met(Window) :- window(Window), remote_device_height(Window, WindowRemoteDeviceHeight), WindowRemoteDeviceHeight >= 700, WindowRemoteDeviceHeight <= 1000.
r1: violation <= window(Window), principal_living_area_window(Window), not obligation_met(Window).
