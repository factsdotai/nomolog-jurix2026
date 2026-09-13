% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 86a33e987b7c7662
applies :- lifting_device(LiftingDevice).
obligation_met(LiftingDevice) :- lifting_device(LiftingDevice), serves_floor(LiftingDevice, floor), opposite_end_against_wall(LiftingDevice, floor).
r1: violation <= lifting_device(LiftingDevice), not obligation_met(LiftingDevice).
