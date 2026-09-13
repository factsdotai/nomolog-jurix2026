% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 2a722337cd319a57
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- principal_living_area_window(PrincipalLivingAreaWindow), handle(Handle).
obligation_met(Handle) :- handle(Handle), height(Handle, HandleHeight), HandleHeight >= 700, HandleHeight <= 1000.
r1: violation <= principal_living_area_window(PrincipalLivingAreaWindow), handle(Handle), not obligation_met(Handle).
r2: exempt_r2 <= principal_living_area_window(PrincipalLivingAreaWindow), remote_opening_device(RemoteOpeningDevice), remote_device_height(RemoteDeviceHeight), within(RemoteDeviceHeight, 700, 1000).
#conflict violation, exempt_r2.
r2 > r1.
