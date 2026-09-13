% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: bee263b7ffe76a2c
applies :- lifting_device(LiftingDevice), serves_floor(ServesFloor).
obligation_met(LiftingDevice) :- lifting_device(LiftingDevice), opposite_end_against_wall(LiftingDevice).
r1: violation <= lifting_device(LiftingDevice), serves_floor(ServesFloor), not obligation_met(LiftingDevice).
