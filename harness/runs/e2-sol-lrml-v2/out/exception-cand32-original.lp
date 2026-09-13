% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 11b337cca8342e8f
% n_statements: 2  n_overrides: 1  dangling: 0
applies :- principal_window(window).
obligation_met :- handle_height(window, height), height >= 700, height <= 1000.
r1: violation <= principal_window(window), not obligation_met.
r2: exempt_r2 <= principal_window(window), remote_device_height(window, height), height >= 700, height <= 1000.
#conflict violation, exempt_r2.
r2 > r1.
