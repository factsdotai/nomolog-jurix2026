% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 49715e3c165eb10d
applies :- principal_window(PrincipalWindow).
obligation_met :- handle_height(Window, WindowHandleHeight), WindowHandleHeight >= 700, WindowHandleHeight <= 1000.
obligation_met :- remote_opening_device(RemoteOpeningDevice), height(RemoteOpeningDevice, RemoteOpeningDeviceHeight), RemoteOpeningDeviceHeight >= 700, RemoteOpeningDeviceHeight <= 1000.
r1: violation <= principal_window(PrincipalWindow), not obligation_met.
