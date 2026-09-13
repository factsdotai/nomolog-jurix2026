% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5e280a1897cb2c21
% term-flattened: nested call -> constant corner_distance_door_entry_control_corne
applies :- door_entry_control(DoorEntryControl), projecting_corner(corner).
obligation_met(DoorEntryControl) :- door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, corner_distance_door_entry_control_corne >= 300.
r1: violation <= door_entry_control(DoorEntryControl), projecting_corner(corner), not obligation_met(DoorEntryControl).
