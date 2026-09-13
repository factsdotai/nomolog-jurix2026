% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4b08e902be2509df
applies :- lifting_device(LiftingDevice), floor(Floor), serves_floor(LiftingDevice, Floor).
obligation_met(Floor, LiftingDevice) :- lifting_device(LiftingDevice), floor(Floor), opposite_end_against_wall(LiftingDevice, Floor).
r1: violation <= lifting_device(LiftingDevice), floor(Floor), serves_floor(LiftingDevice, Floor), not obligation_met(Floor, LiftingDevice).
