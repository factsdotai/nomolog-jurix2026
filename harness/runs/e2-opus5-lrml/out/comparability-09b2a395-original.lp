% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 8ada77b24695c6fd
applies :- door_entry_control(DoorEntryControl).
obligation_met(DoorEntryControl) :- door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, distance_from_projecting_corner(DoorEntryControl, DoorEntryControlDistanceFromProjectingCorner), DoorEntryControlDistanceFromProjectingCorner >= 300.
r1: violation <= door_entry_control(DoorEntryControl), not obligation_met(DoorEntryControl).
