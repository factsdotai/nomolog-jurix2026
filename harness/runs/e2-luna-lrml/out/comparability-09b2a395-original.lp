% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 33b6a3251071f6cd
% term-flattened: nested call -> constant mounting_height_c_h
% term-flattened: nested call -> constant mounting_height_c_h
% term-flattened: nested call -> constant corner_distance_c_k_d
applies :- door_entry_control(c), projecting_corner(k).
obligation_met :- mounting_height_c_h >= 900, mounting_height_c_h <= 1000, corner_distance_c_k_d >= 300.
r1: violation <= door_entry_control(c), projecting_corner(k), not obligation_met.
