% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c7446dbe3b4d0880
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant side_extension_left_resilient_layer
% term-flattened: nested call -> constant side_extension_right_resilient_layer
applies :- resilient_layer(ResilientLayer), doorset(Doorset).
obligation_met(ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), height(Door, DoorHeight), ResilientLayerHeight = DoorHeight, side_extension_left_resilient_layer >= 600, side_extension_right_resilient_layer >= 600.
r1: violation <= resilient_layer(ResilientLayer), doorset(Doorset), not obligation_met(ResilientLayer).
