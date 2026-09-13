% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 06fb1bb2d5fbeaf8
% term-flattened: nested call -> constant mounting_height_door_entry_control
% term-flattened: nested call -> constant mounting_height_door_entry_control
% term-flattened: nested call -> constant corner_distance_door_entry_control_proje
applies :- door_entry_control(DoorEntryControl).
obligation_met :- mounting_height_door_entry_control >= 900, mounting_height_door_entry_control <= 1000, corner_distance_door_entry_control_proje >= 300.
r1: violation <= door_entry_control(DoorEntryControl), not obligation_met.
