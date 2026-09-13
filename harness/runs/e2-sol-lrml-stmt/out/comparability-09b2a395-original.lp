% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 869a90678b44e32f
% term-flattened: nested call -> constant mounting_height_control
% term-flattened: nested call -> constant mounting_height_control
% term-flattened: nested call -> constant corner_distance_control_corner
applies :- door_entry_control(control).
obligation_met :- mounting_height_control >= 900, mounting_height_control <= 1000, projecting_corner(corner), corner_distance_control_corner >= 300.
r1: violation <= door_entry_control(control), not obligation_met.
