% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 10f7617b702fdd48
applies :- doorset(Doorset), resilient_layer(ResilientLayer).
obligation_met :- layer_height >= door_height, side_extension_left >= 600, side_extension_right >= 600.
r1: violation <= doorset(Doorset), resilient_layer(ResilientLayer), not obligation_met.
