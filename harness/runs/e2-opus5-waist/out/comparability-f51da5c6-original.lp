% open-texture: thermal_bridging_limited (reasonably limited)
applies :- building_fabric(B).
r1: violation <= building_fabric(B), not thermal_bridging_limited(B).
