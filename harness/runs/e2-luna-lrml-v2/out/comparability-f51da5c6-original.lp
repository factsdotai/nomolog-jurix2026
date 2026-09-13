% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: ef7862ad82bb6e81
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- building_fabric(BuildingFabric).
obligation_met(BuildingFabric) :- building_fabric(BuildingFabric), thermal_bridging_limited(BuildingFabric), thermal_bridging_limited(party_wall).
r1: violation <= building_fabric(BuildingFabric), not obligation_met(BuildingFabric).
