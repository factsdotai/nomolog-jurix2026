% The whole building ventilation rate should be met. Single open-texture leaf
% (leaf-density datum): whole_building_rate_met.
applies :- building(B).
r1: violation <= building(B), not whole_building_rate_met(B).
