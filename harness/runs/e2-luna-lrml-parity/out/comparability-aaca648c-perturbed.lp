% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8e9d8ac27f9177b1
applies :- lifting_platform(LiftingPlatform).
obligation_met(LiftingPlatform) :- lifting_platform(LiftingPlatform), reflective_surfaces_minimised(LiftingPlatform).
r1: violation <= lifting_platform(LiftingPlatform), not obligation_met(LiftingPlatform).
