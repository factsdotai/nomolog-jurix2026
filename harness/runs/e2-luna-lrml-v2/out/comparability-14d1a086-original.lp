% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 8a65056f9839965f
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- lifting_device(LiftingDevice).
obligation_met(LiftingDevice) :- floor(Floor), lifting_device(LiftingDevice), serves_floor(LiftingDevice, Floor), opposite_end_against_wall(LiftingDevice, Floor).
r1: violation <= lifting_device(LiftingDevice), not obligation_met(LiftingDevice).
