% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: e2d9c192feb961ef
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building_fabric(BuildingFabric).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric), thermal_bridging_limited_at_party_wall(BuildingFabric).
r1: violation <= building_fabric(BuildingFabric), not obligation_met(BuildingFabric).
