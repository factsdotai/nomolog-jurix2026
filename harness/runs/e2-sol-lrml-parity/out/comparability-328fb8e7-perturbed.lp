% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: 12405692a5ae5f27
applies :- pressure_test(test), sound_test(test).
obligation_met :- reported_to_bcb(test).
obligation_met :- not neg_scope_1.
r1: violation <= pressure_test(test), sound_test(test), not obligation_met.
neg_scope_1 :- test_failed(test).
