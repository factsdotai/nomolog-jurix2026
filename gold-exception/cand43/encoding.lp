% Per-door exception => body guard (quantifier carve-out, not provision override):
% a utility-cupboard door may project while another door still violates.
applies :- major_route_corridor(C).
r1: violation <= major_route_corridor(C), door_onto(D, C), projects_when_open(D), not minor_utility_door(D).
