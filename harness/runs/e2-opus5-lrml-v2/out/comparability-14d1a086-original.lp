% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b34ade14ed7456c5
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- lifting_device(LiftingDevice), serves_floor(LiftingDevice, floor).
obligation_met(LiftingDevice) :- lifting_device(LiftingDevice), opposite_end_against_wall(LiftingDevice, floor).
r1: violation <= lifting_device(LiftingDevice), serves_floor(LiftingDevice, floor), not obligation_met(LiftingDevice).
