% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c2751432fd60772c
applies :- principal_window(PrincipalWindow).
obligation_met(PrincipalWindow) :- principal_window(PrincipalWindow), handle_height(PrincipalWindow, PrincipalWindowHandleHeight), PrincipalWindowHandleHeight >= 700, PrincipalWindowHandleHeight <= 1000.
obligation_met(PrincipalWindow) :- principal_window(PrincipalWindow), remote_device_height(PrincipalWindow, PrincipalWindowRemoteDeviceHeight), PrincipalWindowRemoteDeviceHeight >= 700, PrincipalWindowRemoteDeviceHeight <= 1000.
r1: violation <= principal_window(PrincipalWindow), not obligation_met(PrincipalWindow).
