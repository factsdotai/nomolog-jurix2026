% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 6bb276fbd016e5f4
applies :- doorset(d), resilient_layer(l, d), door_height(d, dh), layer_height(l, lh), side_extension_left(l, sl), side_extension_right(l, sr).
obligation_met :- lh = dh, sl >= 600, sr >= 600.
r1: violation <= doorset(d), resilient_layer(l, d), door_height(d, dh), layer_height(l, lh), side_extension_left(l, sl), side_extension_right(l, sr), not obligation_met.
