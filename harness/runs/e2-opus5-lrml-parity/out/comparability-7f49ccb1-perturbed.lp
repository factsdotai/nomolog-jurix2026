% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e2e124fe534dde63
applies :- doorset(Doorset), resilient_layer(ResilientLayer).
obligation_met(Doorset, ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), doorset(Doorset), door_height(Doorset, DoorsetDoorHeight), ResilientLayerHeight = DoorsetDoorHeight, side_extension_left(ResilientLayer, ResilientLayerSideExtensionLeft), ResilientLayerSideExtensionLeft >= 600, side_extension_right(ResilientLayer, ResilientLayerSideExtensionRight), ResilientLayerSideExtensionRight >= 600.
r1: violation <= doorset(Doorset), resilient_layer(ResilientLayer), not obligation_met(Doorset, ResilientLayer).
