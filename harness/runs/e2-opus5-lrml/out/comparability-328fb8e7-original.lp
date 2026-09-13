% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: d33361127f948c30
applies :- pressure_test(PressureTest), test_failure(TestFailure), include(PressureTest, TestFailure).
obligation_met(PressureTest) :- pressure_test(PressureTest), reported_to_bcb(PressureTest).
r1: violation <= pressure_test(PressureTest), test_failure(TestFailure), include(PressureTest, TestFailure), not obligation_met(PressureTest).
