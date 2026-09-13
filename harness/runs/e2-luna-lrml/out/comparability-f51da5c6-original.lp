% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d6bdb54c61c60eda
applies :- building_fabric(BuildingFabric), party_wall(PartyWall).
obligation_met(BuildingFabric, PartyWall) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric), party_wall(PartyWall), thermal_bridging_limited(PartyWall).
r1: violation <= building_fabric(BuildingFabric), party_wall(PartyWall), not obligation_met(BuildingFabric, PartyWall).
