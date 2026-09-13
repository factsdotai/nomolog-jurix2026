% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: a5aec5d0ea6e795b
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- pressure_test(test).
obligation_met :- reported_to_bcb(test).
r1: violation <= pressure_test(test), not obligation_met.
