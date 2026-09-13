% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9d7f9c4d42740cf0
applies :- principal_window(PrincipalWindow).
obligation_met :- handle_height >= 700, handle_height <= 1000.
obligation_met :- remote_device_height >= 700, remote_device_height <= 1000.
r1: violation <= principal_window(PrincipalWindow), not obligation_met.
