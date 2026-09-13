% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: dcbcd814faeb55b7
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- doorset(Doorset), resilient_layer(ResilientLayer).
obligation_met(Doorset, ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), doorset(Doorset), height(Doorset, DoorsetHeight), ResilientLayerHeight = DoorsetHeight, side_extension_left(ResilientLayer, ResilientLayerSideExtensionLeft), ResilientLayerSideExtensionLeft >= 600, side_extension_right(ResilientLayer, ResilientLayerSideExtensionRight), ResilientLayerSideExtensionRight >= 600.
r1: violation <= doorset(Doorset), resilient_layer(ResilientLayer), not obligation_met(Doorset, ResilientLayer).
