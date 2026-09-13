% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 65cda83a7574faa3
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- lifting_device(LiftingDevice), served_floor(LiftingDevice, LiftingDeviceServedFloor).
obligation_met(LiftingDevice) :- lifting_device(LiftingDevice), served_floor(LiftingDevice, LiftingDeviceServedFloor), opposite_end_against_wall(LiftingDevice, LiftingDeviceServedFloor).
r1: violation <= lifting_device(LiftingDevice), served_floor(LiftingDevice, LiftingDeviceServedFloor), not obligation_met(LiftingDevice).
