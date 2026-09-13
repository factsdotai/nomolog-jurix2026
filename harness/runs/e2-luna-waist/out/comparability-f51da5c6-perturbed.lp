applies :- building_fabric(B).
applies :- party_wall(W).
r1: violation <= building_fabric(B), not thermal_bridging_limited(B).
r2: violation <= party_wall(W), not thermal_bridging_limited(W).
