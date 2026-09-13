% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ef7862ad82bb6e81
applies :- building_fabric(BuildingFabric).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric), thermal_bridging_limited(party_wall).
r1: violation <= building_fabric(BuildingFabric), not obligation_met(BuildingFabric).
