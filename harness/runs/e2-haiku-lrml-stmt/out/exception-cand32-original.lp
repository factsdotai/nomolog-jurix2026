% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c66aaa87dba0f696
applies :- principal_window(PrincipalWindow), not neg_scope_1.
obligation_met :- handle_height >= 700, handle_height <= 1000.
r1: violation <= principal_window(PrincipalWindow), not neg_scope_1, not obligation_met.
neg_scope_1 :- remote_device_height(RemoteDeviceHeight).
