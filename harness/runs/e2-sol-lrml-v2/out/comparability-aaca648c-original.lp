% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 845c79212f8ae7e0
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- lifting_platform(LiftingPlatform).
obligation_met(LiftingPlatform) :- lifting_platform(LiftingPlatform), reflective_surfaces_minimised(LiftingPlatform).
r1: violation <= lifting_platform(LiftingPlatform), not obligation_met(LiftingPlatform).
