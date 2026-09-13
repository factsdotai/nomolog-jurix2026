% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e7b485542bd79865
% term-flattened: nested call -> constant handle_height_window
% term-flattened: nested call -> constant handle_height_window
% term-flattened: nested call -> constant remote_device_height_window
% term-flattened: nested call -> constant remote_device_height_window
% term-flattened: nested call -> constant handle_height_window
% term-flattened: nested call -> constant handle_height_window
% term-flattened: nested call -> constant remote_device_height_window
% term-flattened: nested call -> constant remote_device_height_window
applies :- principal_window(PrincipalWindow).
obligation_met :- window(Window), principal_window(Window), handle_height_window >= 700, handle_height_window <= 1000.
obligation_met :- window(Window), principal_window(Window), remote_device_height_window >= 700, remote_device_height_window <= 1000.
r1: violation <= principal_window(PrincipalWindow), not obligation_met.
