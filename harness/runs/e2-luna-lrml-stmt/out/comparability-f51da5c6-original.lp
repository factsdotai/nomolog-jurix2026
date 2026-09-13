% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5de2bf68022d7e25
applies :- building_fabric(BuildingFabric).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric), not neg_scope_1.
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric), party_wall(PartyWall), thermal_bridging_limited(PartyWall).
r1: violation <= building_fabric(BuildingFabric), not obligation_met(BuildingFabric).
neg_scope_1 :- party_wall(PartyWall).
