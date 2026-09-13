% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7b54ed3713e211d1
applies :- lifting_device(LiftingDevice).
obligation_met(LiftingDevice) :- lifting_device(LiftingDevice), served_floor(LiftingDevice, LiftingDeviceServedFloor), opposite_end_against_wall(LiftingDevice).
r1: violation <= lifting_device(LiftingDevice), not obligation_met(LiftingDevice).
