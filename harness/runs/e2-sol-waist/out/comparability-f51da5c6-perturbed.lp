applies :- building_fabric(B).
r1: violation <= building_fabric(B), not thermal_bridging_limited(B).
r2: violation <= building_fabric(B), party_wall(W), not thermal_bridging_limited(W).
