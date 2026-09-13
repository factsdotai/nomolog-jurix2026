% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ec32e7e25d611c4d
% term-flattened: nested call -> constant handle_height_principal_window
% term-flattened: nested call -> constant handle_height_principal_window
applies :- principal_window(PrincipalWindow), not neg_scope_1.
obligation_met(PrincipalWindow) :- principal_window(PrincipalWindow), handle_height_principal_window >= 700, handle_height_principal_window <= 1000.
r1: violation <= principal_window(PrincipalWindow), not neg_scope_1, not obligation_met(PrincipalWindow).
neg_scope_1 :- remote_device_height(RemoteDeviceHeight).
