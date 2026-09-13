% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 014f108567f85dab
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant layer_height_l
% term-flattened: nested call -> constant door_height_d
% term-flattened: nested call -> constant side_extension_left_l
% term-flattened: nested call -> constant side_extension_right_l
applies :- doorset(d), resilient_layer(l, d).
obligation_met :- layer_height_l = door_height_d, side_extension_left_l >= 600, side_extension_right_l >= 600.
r1: violation <= doorset(d), resilient_layer(l, d), not obligation_met.
