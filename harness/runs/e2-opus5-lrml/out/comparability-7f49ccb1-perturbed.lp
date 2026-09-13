% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 9e3405f40f722650
applies :- doorset(Doorset), door(Door), resilient_layer(ResilientLayer).
obligation_met(Door, ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), door(Door), height(Door, DoorHeight), ResilientLayerHeight = DoorHeight, side_extension_left(ResilientLayer, ResilientLayerSideExtensionLeft), ResilientLayerSideExtensionLeft >= 600, side_extension_right(ResilientLayer, ResilientLayerSideExtensionRight), ResilientLayerSideExtensionRight >= 600.
r1: violation <= doorset(Doorset), door(Door), resilient_layer(ResilientLayer), not obligation_met(Door, ResilientLayer).
