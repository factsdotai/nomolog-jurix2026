% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: b6e95e828346ab26
% term-flattened: nested call -> constant corner_distance_door_entry_control_proje
applies :- door_entry_control(DoorEntryControl).
obligation_met(DoorEntryControl) :- door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, projecting_corner(ProjectingCorner), corner_distance_door_entry_control_proje >= 300.
r1: violation <= door_entry_control(DoorEntryControl), not obligation_met(DoorEntryControl).
