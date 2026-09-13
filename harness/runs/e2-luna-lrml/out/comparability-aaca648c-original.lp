% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 708702844a85abd9
applies :- lifting_platform(LiftingPlatform).
obligation_met(LiftingPlatform) :- lifting_platform(LiftingPlatform), reflective_surfaces_minimised_within(LiftingPlatform).
r1: violation <= lifting_platform(LiftingPlatform), not obligation_met(LiftingPlatform).
