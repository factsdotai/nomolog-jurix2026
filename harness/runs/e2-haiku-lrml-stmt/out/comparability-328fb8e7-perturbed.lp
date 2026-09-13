% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 7864d106bbff8736
applies :- pressure_test(PressureTest).
obligation_met(PressureTest) :- pressure_test(PressureTest), reported_to_bcb(PressureTest).
r1: violation <= pressure_test(PressureTest), not obligation_met(PressureTest).
