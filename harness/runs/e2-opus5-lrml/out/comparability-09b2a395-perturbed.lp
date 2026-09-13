% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: df22c14d5b0ceb44
applies :- door_entry_control(DoorEntryControl), projecting_corner(ProjectingCorner).
obligation_met(DoorEntryControl) :- door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, corner_distance(DoorEntryControl, DoorEntryControlCornerDistance), DoorEntryControlCornerDistance >= 300.
r1: violation <= door_entry_control(DoorEntryControl), projecting_corner(ProjectingCorner), not obligation_met(DoorEntryControl).
