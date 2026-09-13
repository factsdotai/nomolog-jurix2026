applies :- building_fabric(B).
r1: violation <= building_fabric(B), not thermal_bridging_ok(B).
thermal_bridging_ok(B) :- thermal_bridging_limited(B), party_wall(W), thermal_bridging_limited(W).
