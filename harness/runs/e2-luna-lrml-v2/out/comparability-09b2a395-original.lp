% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 57c5afb5bdcddf44
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, corner_distance(DoorEntryControl, DoorEntryControlCornerDistance), DoorEntryControlCornerDistance >= 300.
obligation_met(DoorEntryControl) :- door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, corner_distance(DoorEntryControl, DoorEntryControlCornerDistance), DoorEntryControlCornerDistance >= 300.
r1: violation <= door_entry_control(DoorEntryControl), mounting_height(DoorEntryControl, DoorEntryControlMountingHeight), DoorEntryControlMountingHeight >= 900, DoorEntryControlMountingHeight <= 1000, corner_distance(DoorEntryControl, DoorEntryControlCornerDistance), DoorEntryControlCornerDistance >= 300, not obligation_met(DoorEntryControl).
