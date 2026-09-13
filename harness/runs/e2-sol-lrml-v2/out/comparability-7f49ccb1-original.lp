% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6768a671a0350004
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- doorset(door), resilient_layer(layer, door), door_height(door, door_height), layer_height(layer, layer_height), side_extension_left(layer, left_extension), side_extension_right(layer, right_extension).
obligation_met :- layer_height = door_height, left_extension >= 600, right_extension >= 600.
r1: violation <= doorset(door), resilient_layer(layer, door), door_height(door, door_height), layer_height(layer, layer_height), side_extension_left(layer, left_extension), side_extension_right(layer, right_extension), not obligation_met.
