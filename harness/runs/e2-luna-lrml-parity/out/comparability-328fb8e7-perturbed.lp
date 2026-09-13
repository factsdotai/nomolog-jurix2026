% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: a12590e103b45af0
applies :- pressure_test(test).
applies :- test_failed(test).
obligation_met :- reported_to_bcb(test).
r1: violation <= pressure_test(test), not obligation_met.
r2: violation <= test_failed(test), not obligation_met.
