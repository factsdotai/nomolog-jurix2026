% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8f48128a5eaeea3c
applies :- doorset(Doorset), resilient_layer(ResilientLayer).
obligation_met(ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), height(Door, DoorHeight), ResilientLayerHeight = DoorHeight, side_extension_left(ResilientLayer, ResilientLayerSideExtensionLeft), ResilientLayerSideExtensionLeft >= 600, side_extension_right(ResilientLayer, ResilientLayerSideExtensionRight), ResilientLayerSideExtensionRight >= 600.
r1: violation <= doorset(Doorset), resilient_layer(ResilientLayer), not obligation_met(ResilientLayer).
