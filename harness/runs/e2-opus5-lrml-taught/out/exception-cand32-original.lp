% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4b03b48a1be10152
applies :- window(Window), principal_window(Window).
obligation_met(Window) :- window(Window), handle_height(Window, WindowHandleHeight), WindowHandleHeight >= 700, WindowHandleHeight <= 1000.
obligation_met(Window) :- remote_opening_device(RemoteOpeningDevice), window(Window), remote_device_height(Window, WindowRemoteDeviceHeight), WindowRemoteDeviceHeight >= 700, WindowRemoteDeviceHeight <= 1000.
r1: violation <= window(Window), principal_window(Window), not obligation_met(Window).
