% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: f5852d10e59ea8f5
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building_fabric(BuildingFabric), party_wall(PartyWall), part_of(PartyWall, BuildingFabric).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric).
r1: violation <= building_fabric(BuildingFabric), party_wall(PartyWall), part_of(PartyWall, BuildingFabric), not obligation_met(BuildingFabric).
