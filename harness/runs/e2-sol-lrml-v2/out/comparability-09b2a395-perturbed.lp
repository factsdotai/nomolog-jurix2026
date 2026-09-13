% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: af72ca2029992fe8
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- door_entry_control(c1), mounting_height(c1, height), projecting_corner(k1), corner_distance(c1, k1, distance).
obligation_met :- height >= 900, height <= 1000, distance >= 300.
r1: violation <= door_entry_control(c1), mounting_height(c1, height), projecting_corner(k1), corner_distance(c1, k1, distance), not obligation_met.
