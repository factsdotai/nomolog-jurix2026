% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: faafd7a9415b842c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- resilient_layer(ResilientLayer), doorset(Doorset).
obligation_met(ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), height(Door, DoorHeight), ResilientLayerHeight = DoorHeight, side_extension_left(ResilientLayer, ResilientLayerSideExtensionLeft), ResilientLayerSideExtensionLeft >= 600, side_extension_right(ResilientLayer, ResilientLayerSideExtensionRight), ResilientLayerSideExtensionRight >= 600.
r1: violation <= resilient_layer(ResilientLayer), doorset(Doorset), not obligation_met(ResilientLayer).
