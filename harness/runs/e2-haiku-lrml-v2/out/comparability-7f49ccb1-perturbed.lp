% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 6ef7cece311be471
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant side_extension_left_resilient_layer
% term-flattened: nested call -> constant side_extension_right_resilient_layer
applies :- resilient_layer(ResilientLayer), doorset(Doorset).
obligation_met(Doorset, ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), doorset(Doorset), height(Doorset, DoorsetHeight), ResilientLayerHeight = DoorsetHeight, side_extension_left_resilient_layer >= 600, side_extension_right_resilient_layer >= 600.
r1: violation <= resilient_layer(ResilientLayer), doorset(Doorset), not obligation_met(Doorset, ResilientLayer).
