% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c1440ab9a7b75c3d
applies :- principal_window(PrincipalWindow), handle(Handle).
obligation_met :- handle(Handle), height(Handle, HandleHeight), HandleHeight >= 700, HandleHeight <= 1000.
obligation_met :- remote_device(RemoteDevice), height(RemoteDevice, RemoteDeviceHeight), RemoteDeviceHeight >= 700, RemoteDeviceHeight <= 1000.
r1: violation <= principal_window(PrincipalWindow), handle(Handle), not obligation_met.
