% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 4c48f2137636ef23
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- principal_window(window), handle_height(window, height).
obligation_met :- height >= 700, height <= 1000.
r1: violation <= principal_window(window), handle_height(window, height), not obligation_met.
r2: exempt_r2 <= principal_window(window), remote_device_height(window, height), height >= 700, height <= 1000.
#conflict violation, exempt_r2.
r2 > r1.
