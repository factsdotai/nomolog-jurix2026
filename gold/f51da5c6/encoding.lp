% Building fabric constructed so thermal bridging (incl. party wall) is
% reasonably limited. open-texture: thermal_bridging_limited.
applies :- building_fabric(B).
r1: violation <= building_fabric(B), not thermal_bridging_limited(B).
