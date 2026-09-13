% translated by bracket2waist_v2.py under translation-policy-v2.md
% ir-sha256: b6af327c971d6d4e
% n_statements: 1  n_overrides: 0  dangling: 0
applies :- pressure_test(PressureTest), test_result(PressureTest).
obligation_met(PressureTest) :- pressure_test(PressureTest), reported_to_bcb(PressureTest).
r1: violation <= pressure_test(PressureTest), test_result(PressureTest), not obligation_met(PressureTest).
