% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: e2d9c192feb961ef
applies :- building_fabric(BuildingFabric).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric), thermal_bridging_limited_at_party_wall(BuildingFabric).
r1: violation <= building_fabric(BuildingFabric), not obligation_met(BuildingFabric).
