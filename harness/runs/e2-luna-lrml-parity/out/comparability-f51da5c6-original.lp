% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 4b56256eb721add8
applies :- building_fabric(BuildingFabric).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric).
r1: violation <= building_fabric(BuildingFabric), not obligation_met(BuildingFabric).
