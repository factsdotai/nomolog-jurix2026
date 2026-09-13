% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 417dbc1c5cf5a8ce
applies :- pressure_test(PressureTest), test_failed(PressureTest).
obligation_met(PressureTest) :- pressure_test(PressureTest), reported_to_bcb(PressureTest).
r1: violation <= pressure_test(PressureTest), test_failed(PressureTest), not obligation_met(PressureTest).
