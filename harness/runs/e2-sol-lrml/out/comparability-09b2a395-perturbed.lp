% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 1de9a89c1e523234
applies :- door_entry_control(control), mounting_height(control, height), projecting_corner(corner), corner_distance(control, corner, distance).
obligation_met :- height >= 900, height <= 1000, distance >= 300.
r1: violation <= door_entry_control(control), mounting_height(control, height), projecting_corner(corner), corner_distance(control, corner, distance), not obligation_met.
