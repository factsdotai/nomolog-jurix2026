% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: c298b138208c9a5f
% n_statements: 1  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant mounting_height_door_entry_control
% term-flattened: nested call -> constant mounting_height_door_entry_control
% term-flattened: nested call -> constant corner_distance_door_entry_control_corne
applies :- door_entry_control(DoorEntryControl), projecting_corner(corner).
obligation_met :- mounting_height_door_entry_control >= 900, mounting_height_door_entry_control <= 1000, corner_distance_door_entry_control_corne >= 300.
r1: violation <= door_entry_control(DoorEntryControl), projecting_corner(corner), not obligation_met.
