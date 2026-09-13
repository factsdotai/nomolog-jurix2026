% Major renovation => feasibility of high-efficiency alternative systems
% considered. open-texture: alt_systems_feasibility_considered.
applies :- building(B), major_renovation(B).
r1: violation <= building(B), major_renovation(B), not alt_systems_feasibility_considered(B).
