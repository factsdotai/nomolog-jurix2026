% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 560bf95734a9574f
applies :- door_entry_control(control).
obligation_met :- height(Height), mounting_height(control, Height), Height >= 900, Height <= 1000, corner(Corner), projecting_corner(Corner), distance(Distance), corner_distance(control, Corner, Distance), Distance >= 300.
r1: violation <= door_entry_control(control), not obligation_met.
