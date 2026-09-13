% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5c10c23f82699925
% term-flattened: nested call -> constant layer_height_resilient_layer
% term-flattened: nested call -> constant door_height_doorset
% term-flattened: nested call -> constant side_extension_left_resilient_layer
% term-flattened: nested call -> constant side_extension_right_resilient_layer
applies :- doorset(Doorset), resilient_layer(ResilientLayer), resilient_layer(ResilientLayer, Doorset).
obligation_met :- layer_height_resilient_layer = door_height_doorset, side_extension_left_resilient_layer >= 600, side_extension_right_resilient_layer >= 600.
r1: violation <= doorset(Doorset), resilient_layer(ResilientLayer), resilient_layer(ResilientLayer, Doorset), not obligation_met.
