% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: faafd7a9415b842c
applies :- resilient_layer(ResilientLayer), doorset(Doorset).
obligation_met(ResilientLayer) :- resilient_layer(ResilientLayer), height(ResilientLayer, ResilientLayerHeight), height(Door, DoorHeight), ResilientLayerHeight = DoorHeight, side_extension_left(ResilientLayer, ResilientLayerSideExtensionLeft), ResilientLayerSideExtensionLeft >= 600, side_extension_right(ResilientLayer, ResilientLayerSideExtensionRight), ResilientLayerSideExtensionRight >= 600.
r1: violation <= resilient_layer(ResilientLayer), doorset(Doorset), not obligation_met(ResilientLayer).
