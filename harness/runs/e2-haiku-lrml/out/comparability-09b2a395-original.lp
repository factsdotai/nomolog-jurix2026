% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c298b138208c9a5f
% term-flattened: nested call -> constant mounting_height_door_entry_control
% term-flattened: nested call -> constant mounting_height_door_entry_control
% term-flattened: nested call -> constant corner_distance_door_entry_control_corne
applies :- door_entry_control(DoorEntryControl), projecting_corner(corner).
obligation_met :- mounting_height_door_entry_control >= 900, mounting_height_door_entry_control <= 1000, corner_distance_door_entry_control_corne >= 300.
r1: violation <= door_entry_control(DoorEntryControl), projecting_corner(corner), not obligation_met.
