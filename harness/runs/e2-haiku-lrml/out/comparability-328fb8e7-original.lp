% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 65d89d4d4fa0b359
applies :- pressure_test(PressureTest), pressure_test_passed(PressureTest).
applies :- pressure_test(PressureTest), test_failed(PressureTest).
obligation_met(PressureTest) :- pressure_test(PressureTest), reported_to_bcb(PressureTest).
r1: violation <= pressure_test(PressureTest), pressure_test_passed(PressureTest), not obligation_met(PressureTest).
r2: violation <= pressure_test(PressureTest), test_failed(PressureTest), not obligation_met(PressureTest).
