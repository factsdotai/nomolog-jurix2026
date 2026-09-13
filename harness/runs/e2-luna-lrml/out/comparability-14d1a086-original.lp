% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8a65056f9839965f
applies :- lifting_device(LiftingDevice).
obligation_met(LiftingDevice) :- floor(Floor), lifting_device(LiftingDevice), serves_floor(LiftingDevice, Floor), opposite_end_against_wall(LiftingDevice, Floor).
r1: violation <= lifting_device(LiftingDevice), not obligation_met(LiftingDevice).
