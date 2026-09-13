% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 3a1db97f7780fd46
applies :- resilient_layer(ResilientLayer, Doorset).
obligation_met(Doorset, ResilientLayer) :- layer_height(ResilientLayer, ResilientLayerLayerHeight), door_height(Doorset, DoorsetDoorHeight), ResilientLayerLayerHeight = DoorsetDoorHeight, side_extension_left(ResilientLayer, ResilientLayerSideExtensionLeft), ResilientLayerSideExtensionLeft >= 600, side_extension_right(ResilientLayer, ResilientLayerSideExtensionRight), ResilientLayerSideExtensionRight >= 600.
r1: violation <= resilient_layer(ResilientLayer, Doorset), not obligation_met(Doorset, ResilientLayer).
