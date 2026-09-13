% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 5f310de12a2fc2b2
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant handle_height_window
% term-flattened: nested call -> constant handle_height_window
applies :- principal_window(window), not neg_scope_1.
obligation_met :- handle_height_window >= 700, handle_height_window <= 1000.
r1: violation <= principal_window(window), not neg_scope_1, not obligation_met.
neg_scope_1 :- remote_device_height(window, height), height >= 700, height <= 1000.
