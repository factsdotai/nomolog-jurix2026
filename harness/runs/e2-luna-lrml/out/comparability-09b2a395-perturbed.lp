% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: ed739b711c9059e5
applies :- door_entry_control(DoorEntryControl).
obligation_met(DoorEntryControl) :- door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, corner_distance_from_projecting_corner(DoorEntryControl, DoorEntryControlCornerDistanceFromProjectingCorner), DoorEntryControlCornerDistanceFromProjectingCorner >= 300.
r1: violation <= door_entry_control(DoorEntryControl), not obligation_met(DoorEntryControl).
