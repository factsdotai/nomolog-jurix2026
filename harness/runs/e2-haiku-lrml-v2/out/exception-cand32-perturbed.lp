% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0e0d34ef06f290cc
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- principal_living_area_window(PrincipalLivingAreaWindow), handle(Handle).
obligation_met(Handle) :- handle(Handle), height(Handle, HandleHeight), HandleHeight >= 700, HandleHeight <= 1000.
r1: violation <= principal_living_area_window(PrincipalLivingAreaWindow), handle(Handle), not obligation_met(Handle).
r2: exempt_r2 <= principal_living_area_window(PrincipalLivingAreaWindow), remote_opening_device(RemoteOpeningDevice), height(RemoteOpeningDevice, RemoteOpeningDeviceHeight), within(RemoteOpeningDeviceHeight, 700, 1000).
#conflict violation, exempt_r2.
r2 > r1.
