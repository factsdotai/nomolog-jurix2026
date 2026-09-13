% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 20af855bffde6651
applies :- door_entry_control(control).
obligation_met :- mounting_height(control, height), height >= 900, height <= 1000, projecting_corner(corner), corner_distance(control, corner, distance), distance >= 300.
r1: violation <= door_entry_control(control), not obligation_met.
