% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 68fa535c54c8c90c
applies :- lifting_platform(LiftingPlatform).
obligation_met(LiftingPlatform) :- lifting_platform(LiftingPlatform), reflective_surfaces_minimised(LiftingPlatform).
obligation_met(LiftingPlatform) :- lifting_platform(LiftingPlatform), mirror(Mirror), lift_lobby(LiftLobby), part_of(Mirror, LiftLobby).
r1: violation <= lifting_platform(LiftingPlatform), not obligation_met(LiftingPlatform).
