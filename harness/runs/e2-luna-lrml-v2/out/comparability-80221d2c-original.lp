% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: d6e8f8a366f4e15f
% n_statements: 2  n_overrides: 0  dangling: 0
% term-flattened: nested call -> constant drain_distance_w_f
% term-flattened: nested call -> constant number_of_connected_drainage_wells_f
applies :- floor_drain(f), connected(w, f).
applies :- floor_drain(f).
obligation_met_s1 :- drain_distance_w_f <= 3000.
r1: violation <= floor_drain(f), connected(w, f), not obligation_met_s1.
obligation_met_s2 :- number_of_connected_drainage_wells_f <= 2.
r2: violation <= floor_drain(f), not obligation_met_s2.
