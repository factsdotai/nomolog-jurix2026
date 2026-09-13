% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ef2ea115dd2685d3
applies :- lifting_platform(LiftingPlatform).
obligation_met(LiftingPlatform) :- lifting_platform(LiftingPlatform), reflective_surfaces_minimised(LiftingPlatform).
obligation_met(LiftingPlatform) :- lifting_platform(LiftingPlatform), mirror(Mirror), lift_lobby(LiftLobby).
r1: violation <= lifting_platform(LiftingPlatform), not obligation_met(LiftingPlatform).
