% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d020901743ccc112
applies :- principal_window(PrincipalWindow), principal_living_area(PrincipalWindow).
obligation_met(PrincipalWindow) :- principal_window(PrincipalWindow), handle_height(PrincipalWindow, PrincipalWindowHandleHeight), PrincipalWindowHandleHeight >= 700, PrincipalWindowHandleHeight <= 1000.
obligation_met(PrincipalWindow) :- principal_window(PrincipalWindow), remote_device_height(PrincipalWindow, PrincipalWindowRemoteDeviceHeight), within(PrincipalWindowRemoteDeviceHeight, 700, 1000).
r1: violation <= principal_window(PrincipalWindow), principal_living_area(PrincipalWindow), not obligation_met(PrincipalWindow).
