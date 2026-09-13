% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: 762d610d96c0944a
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- pressure_test(PressureTest).
obligation_met(PressureTest) :- pressure_test(PressureTest), reported_to_bcb(PressureTest).
r1: violation <= pressure_test(PressureTest), not obligation_met(PressureTest).
