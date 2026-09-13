% open-texture: thermal_bridging_limited (includes party wall junctions)
applies :- building_fabric(B).
r1: violation <= building_fabric(B), not thermal_bridging_limited(B).
