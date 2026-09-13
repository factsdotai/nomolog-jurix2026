% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: bb77239e4027ac3c
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- door_entry_control(c), mounting_height(c, h), projecting_corner(k), corner_distance(c, k, d).
obligation_met :- h >= 900, h <= 1000, d >= 300.
r1: violation <= door_entry_control(c), mounting_height(c, h), projecting_corner(k), corner_distance(c, k, d), not obligation_met.
