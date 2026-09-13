% "Door entry controls, where provided, are mounted 900-1000mm above finished
%  ground level, and at least 300mm away from any projecting corner."
% "where provided" = applicability guard (selection relation).
% "any projecting corner" = universal, encoded via a negated exists-bad pattern.

applies :- door_entry_control(C).

r1: violation <= door_entry_control(C), not mounted_ok(C).

mounted_ok(C) :- mounting_height(C, H), H >= 900, H <= 1000, not near_corner(C).

near_corner(C) :- door_entry_control(C), projecting_corner(K), corner_distance(C, K, D), D < 300.
