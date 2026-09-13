% translated by bracket2waist.py under translation-policy.md v1
% ir-sha256: c90aab026077b748
applies :- dwelling(d1), exposed_facade(f1, d1), exposed_facade(f2, d1), f1 != f2.
obligation_met :- similar_ventilator_area(f1, f2).
r1: violation <= dwelling(d1), exposed_facade(f1, d1), exposed_facade(f2, d1), f1 != f2, not obligation_met.
