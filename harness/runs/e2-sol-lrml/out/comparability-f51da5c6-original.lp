% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 438e242ac0f45d82
applies :- building_fabric(BuildingFabric), party_wall(PartyWall).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric).
r1: violation <= building_fabric(BuildingFabric), party_wall(PartyWall), not obligation_met(BuildingFabric).
