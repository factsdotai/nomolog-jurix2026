% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e432ad6c6580d2eb
applies :- principal_window(PrincipalWindow).
obligation_met :- principal_window(window), handle_height(window, height), height >= 700, height <= 1000.
obligation_met :- principal_window(window), remote_device_height(window, height), height >= 700, height <= 1000.
r1: violation <= principal_window(PrincipalWindow), not obligation_met.
