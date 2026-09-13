% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: eab1335a64449dbe
applies :- lifting_device(d), serves_floor(d, f).
obligation_met :- opposite_end_against_wall(d, f).
r1: violation <= lifting_device(d), serves_floor(d, f), not obligation_met.
