% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 749ff68245751a97
applies :- principal_window(PrincipalWindow).
obligation_met :- handle_height >= 700, handle_height <= 1000.
obligation_met :- remote_device_height >= 700, remote_device_height <= 1000.
r1: violation <= principal_window(PrincipalWindow), not obligation_met.
