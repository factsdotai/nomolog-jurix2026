% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 0318705df9eb7f47
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- pressure_test(t1).
applies :- test_failed(t1).
obligation_met :- reported_to_bcb(t1).
r1: violation <= pressure_test(t1), not obligation_met.
r2: violation <= test_failed(t1), not obligation_met.
