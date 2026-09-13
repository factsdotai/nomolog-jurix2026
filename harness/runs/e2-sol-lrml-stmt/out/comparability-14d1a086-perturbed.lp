% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: f96f7fd3f6f510e0
applies :- lifting_device(LiftingDevice).
obligation_met(LiftingDevice) :- floor(Floor), lifting_device(LiftingDevice), serves_floor(LiftingDevice, Floor), opposite_end_against_wall(LiftingDevice, Floor).
r1: violation <= lifting_device(LiftingDevice), not obligation_met(LiftingDevice).
