% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 70ad3e138e38093d
applies :- floor_drain(f1), sink(s1), connected(s1, f1), drain_distance(s1, f1, distance).
obligation_met :- f1_connected_sink_count <= 2, distance <= 3000.
r1: violation <= floor_drain(f1), sink(s1), connected(s1, f1), drain_distance(s1, f1, distance), not obligation_met.
