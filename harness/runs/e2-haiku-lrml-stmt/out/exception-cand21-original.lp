% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 5a567b657a6222c3
% term-flattened: nested call -> constant edge_corner_distance_outward_opening_doo
applies :- outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), not neg_scope_1.
obligation_met :- edge_corner_distance_outward_opening_doo >= 0.
r1: violation <= outward_opening_door(OutwardOpeningDoor), corner_door_pair(OutwardOpeningDoor), not neg_scope_1, not obligation_met.
neg_scope_1 :- outward_opening_door(OutwardOpeningDoor), turning_circle_outside(OutwardOpeningDoor, 1500).
