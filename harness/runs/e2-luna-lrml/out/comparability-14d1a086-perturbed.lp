% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d5118ece70dbdd9c
applies :- lifting_device(LiftingDevice).
obligation_met(LiftingDevice) :- floor_level(FloorLevel), lifting_device(LiftingDevice), opposite_end_against_wall(LiftingDevice, FloorLevel).
r1: violation <= lifting_device(LiftingDevice), not obligation_met(LiftingDevice).
