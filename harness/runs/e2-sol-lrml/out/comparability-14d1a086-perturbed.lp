% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 559caa85737a5cfa
applies :- lifting_device(LiftingDevice), serves_floor(LiftingDevice, floor).
obligation_met(LiftingDevice) :- lifting_device(LiftingDevice), opposite_end_against_wall(LiftingDevice, floor).
r1: violation <= lifting_device(LiftingDevice), serves_floor(LiftingDevice, floor), not obligation_met(LiftingDevice).
